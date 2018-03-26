package com.helo478.agartha.pipeline;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.helo478.agartha.pipeline.git.GitException;
import com.helo478.agartha.pipeline.git.GitService;
import com.helo478.agartha.pipeline.github.GithubConfiguration;
import com.helo478.agartha.pipeline.github.GithubException;
import com.helo478.agartha.pipeline.github.GithubPipelineConfiguration;
import com.helo478.agartha.pipeline.github.GithubProxy;
import com.helo478.agartha.pipeline.jenkins.JenkinsConfiguration;
import com.helo478.agartha.pipeline.jenkins.JenkinsException;
import com.helo478.agartha.pipeline.jenkins.JenkinsProxy;
import com.helo478.agartha.pipeline.maven.MavenException;
import com.helo478.agartha.pipeline.maven.MavenService;
import com.helo478.agartha.pipeline.model.NewPipelineRequest;

@Service
public class PipelineService {

	private static final Logger logger = LoggerFactory.getLogger(PipelineService.class);

	@Value("${DIRECTORY_WORKING}")
	private String workingDirectory;

	@Autowired
	private GithubProxy github;

	@Autowired
	private GitService gitService;

	@Autowired
	private MavenService mavenService;

	@Autowired
	private JenkinsProxy jenkins;

	@Autowired
	private GithubPipelineConfigurationRepository githubPipelineConfigurationRepository;

	public void createPipeline(final GithubConfiguration githubConfiguration,
			final JenkinsConfiguration jenkinsConfiguration, final NewPipelineRequest newPipelineRequest)
			throws PipelineException {

		final String pipelineName = newPipelineRequest.getPipelineName();

		if (StringUtils.isEmpty(
				pipelineName)) { throw new IllegalArgumentException("missing required property: pipelineName"); }

		final GithubPipelineConfiguration githubPipelineConfiguration = createGithubRepository(githubConfiguration,
				pipelineName);

		cloneLocalRepository(githubConfiguration, pipelineName);

		initializeAndPushToGithub(newPipelineRequest, githubPipelineConfiguration, jenkinsConfiguration);

		githubPipelineConfigurationRepository.save(githubPipelineConfiguration);
	}

	private GithubPipelineConfiguration createGithubRepository(final GithubConfiguration githubConfiguration,
			final String pipelineName) throws PipelineException {

		try {

			return github.createRepository(githubConfiguration, pipelineName);
		}
		catch (final GithubException e) {

			logger.error("createPipeline :: GithubException: {}", e.getMessage(), e);

			throw new PipelineException(e);
		}
	}

	private void cloneLocalRepository(final GithubConfiguration githubConfiguration, final String pipelineName)
			throws PipelineException {

		try {

			gitService.cloneRepository(workingDirectory, githubConfiguration.getCredentials().getUserName(),
					pipelineName);
		}
		catch (final GitException e) {

			logger.error("createPipeline :: git clone :: GitException: {}", e.getMessage(), e);

			try {
				github.deleteRepository(githubConfiguration, pipelineName);
			}
			catch (GithubException e1) {

				logger.error("createPipeline :: delete github repository :: unable to delete github repository: {}",
						e.getMessage(), e);
			}

			throw new PipelineException(e);
		}
	}

	private void initializeAndPushToGithub(final NewPipelineRequest newPipelineRequest,
			final GithubPipelineConfiguration githubPipelineConfiguration,
			final JenkinsConfiguration jenkinsConfiguration) throws PipelineException {

		final String pipelineName = newPipelineRequest.getPipelineName(); // TODO: add null checking ?
		final GithubConfiguration githubConfiguration = githubPipelineConfiguration.getGithubConfiguration();

		try {

			mavenService.initializeProjectWithMavenArchetype(workingDirectory, newPipelineRequest.getJavaPackage(),
					pipelineName);
			gitService.commitAndPush(workingDirectory, pipelineName, githubPipelineConfiguration);
			jenkins.createMultibranchPipelineJob(jenkinsConfiguration, pipelineName);
		}
		catch (final GitException | MavenException | JenkinsException e) {

			logger.error("createPipeline :: Exception: {}", e.getMessage(), e);

			try {
				github.deleteRepository(githubConfiguration, pipelineName);
			}
			catch (GithubException e1) {

				logger.error("createPipeline :: delete github repository :: unable to delete github repository: {}",
						e.getMessage(), e);
			}

			throw new PipelineException(e);
		}
		finally {

			final File localGitRepository = new File(String.format("%s/%s", workingDirectory, pipelineName));
			removeDirectory(localGitRepository);
		}
	}

	private static void removeDirectory(final File dir) {

		if (dir.isDirectory()) {
			File[] files = dir.listFiles();
			if (files != null && files.length > 0) {
				for (File aFile : files) {
					removeDirectory(aFile);
				}
			}
			dir.delete();
		}
		else {
			dir.delete();
		}
	}

}
