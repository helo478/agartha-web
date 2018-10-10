package com.helo478.agartha.pipeline;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.helo478.agartha.git.GitException;
import com.helo478.agartha.git.GitService;
import com.helo478.agartha.github.GithubConfigurationModel;
import com.helo478.agartha.github.GithubException;
import com.helo478.agartha.github.GithubPipelineConfigurationModel;
import com.helo478.agartha.github.GithubProxy;
import com.helo478.agartha.jenkins.JenkinsConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsException;
import com.helo478.agartha.jenkins.JenkinsProxy;
import com.helo478.agartha.maven.MavenException;
import com.helo478.agartha.maven.MavenService;

@Service
public class PipelineServiceImpl implements PipelineService {

	private static final Logger logger = LoggerFactory.getLogger(PipelineServiceImpl.class);

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

	@Override
	public void createPipeline(final GithubConfigurationModel githubConfiguration,
			final JenkinsConfigurationModel jenkinsConfiguration, final NewPipelineRequest newPipelineRequest)
			throws PipelineException {

		final String pipelineName = newPipelineRequest.getPipelineName();

		if (StringUtils.isEmpty(
				pipelineName)) { throw new IllegalArgumentException("missing required property: pipelineName"); }

		final GithubPipelineConfigurationModel githubPipelineConfiguration = createGithubRepository(githubConfiguration,
				pipelineName);

		// TODO: catch exceptions and roll back previous steps
		cloneLocalRepository(githubConfiguration, pipelineName);

		// TODO: catch exceptions and roll back previous steps
		initializeAndPushToGithub(newPipelineRequest, githubPipelineConfiguration, jenkinsConfiguration);

		// TODO: catch exceptions and roll back previous steps
		githubPipelineConfigurationRepository.save(githubPipelineConfiguration);
	}

	private GithubPipelineConfigurationModel createGithubRepository(final GithubConfigurationModel githubConfiguration,
			final String pipelineName) throws PipelineException {

		try {

			return github.createRepository(githubConfiguration, pipelineName);
		}
		catch (final GithubException e) {

			logger.error("createPipeline :: GithubException: {}", e.getMessage(), e);

			throw new PipelineException(e);
		}
	}

	private void cloneLocalRepository(final GithubConfigurationModel githubConfiguration, final String pipelineName)
			throws PipelineException {

		try {

			gitService.cloneRepository(workingDirectory, githubConfiguration.getCredentials().getUserName(),
					pipelineName);
		}
		catch (final GitException e) {

			logger.error("createPipeline :: git clone :: GitException: {}", e.getMessage(), e);

			try {
				github.deleteRepository(githubConfiguration, pipelineName); // TODO: move this up higher
			}
			catch (GithubException e1) {

				logger.error("createPipeline :: delete github repository :: unable to delete github repository: {}",
						e.getMessage(), e);
			}

			throw new PipelineException(e);
		}
	}

	private void initializeAndPushToGithub(final NewPipelineRequest newPipelineRequest,
			final GithubPipelineConfigurationModel githubPipelineConfiguration,
			final JenkinsConfigurationModel jenkinsConfiguration) throws PipelineException {

		final String pipelineName = newPipelineRequest.getPipelineName(); // TODO: add null checking ?
		final GithubConfigurationModel githubConfiguration = githubPipelineConfiguration.getGithubConfiguration();

		try {

			mavenService.initializeProjectWithMavenArchetype(workingDirectory, newPipelineRequest.getJavaPackage(),
					pipelineName);
			gitService.commitAndPush(workingDirectory, pipelineName, githubPipelineConfiguration);
			jenkins.createMultibranchPipelineJob(jenkinsConfiguration, githubPipelineConfiguration, pipelineName);
		}
		catch (final GitException | MavenException | JenkinsException e) {

			logger.error("createPipeline :: Exception: {}", e.getMessage(), e);

			try {
				github.deleteRepository(githubConfiguration, pipelineName); // TODO: move this up higher
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
