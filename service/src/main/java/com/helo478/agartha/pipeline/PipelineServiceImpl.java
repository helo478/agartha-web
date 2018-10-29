package com.helo478.agartha.pipeline;

import java.io.File;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.helo478.agartha.git.GitException;
import com.helo478.agartha.git.GitService;
import com.helo478.agartha.github.GithubConfigurationModel;
import com.helo478.agartha.github.GithubConfigurationRepository;
import com.helo478.agartha.github.GithubException;
import com.helo478.agartha.github.GithubPipelineConfigurationModel;
import com.helo478.agartha.github.GithubProxy;
import com.helo478.agartha.jenkins.JenkinsConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsConfigurationRepository;
import com.helo478.agartha.jenkins.JenkinsException;
import com.helo478.agartha.jenkins.JenkinsPipelineConfigurationModel;
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
	private GithubConfigurationRepository githubConfigurationRepository;

	@Autowired
	private JenkinsConfigurationRepository jenkinsConfigurationRepository;

	@Autowired
	private PipelineConfigurationRepository pipelineConfigurationRepository;

	@Override
	public void createPipeline(final NewPipelineRequest newPipelineRequest) throws PipelineException {

		final String pipelineName = newPipelineRequest.getPipelineName();
		final String javaPackage = newPipelineRequest.getJavaPackage();
		final int githubConfigurationId = newPipelineRequest.getGithubConfigurationId();
		final int jenkinsConfigurationId = newPipelineRequest.getJenkinsConfigurationId();

		if (StringUtils.isEmpty(
				pipelineName)) { throw new IllegalArgumentException("missing required property: pipelineName"); }

		final Optional<GithubConfigurationModel> githubConfiguration = githubConfigurationRepository
				.findById(githubConfigurationId);

		final Optional<JenkinsConfigurationModel> jenkinsConfiguration = jenkinsConfigurationRepository
				.findById(jenkinsConfigurationId);

		githubConfiguration.orElseThrow(
				() -> new IllegalArgumentException("invalid githubConfigurationId: " + githubConfigurationId));

		jenkinsConfiguration.orElseThrow(
				() -> new IllegalArgumentException("invalid jenkinsConfigurationId: " + jenkinsConfigurationId));

		try {
			if (github.existsRepository(githubConfiguration.get(), pipelineName)) { throw new IllegalArgumentException(
					"a Github repository with that name already exists"); }
		}
		catch (final GithubException e) {
			throw new PipelineException("there was a problem communicating with Github");
		}

		try {
			if (jenkins.existsJob(jenkinsConfiguration.get(), pipelineName)) { throw new IllegalArgumentException(
					"a Jenkins job with that name already exists"); }
		}
		catch (final JenkinsException e) {
			throw new PipelineException("there was a problem communicating with Jenkins");
		}

		doCreatePipeline(pipelineName, javaPackage, githubConfiguration.get(), jenkinsConfiguration.get());
	}

	private PipelineModel doCreatePipeline(final String pipelineName, final String javaPackage,
			final GithubConfigurationModel githubConfiguration, final JenkinsConfigurationModel jenkinsConfiguration)
			throws PipelineException {

		GithubPipelineConfigurationModel githubPipelineConfiguration;
		JenkinsPipelineConfigurationModel jenkinsPipelineConfigurationModel;

		try {
			githubPipelineConfiguration = github.createRepository(githubConfiguration, pipelineName);
		}
		catch (final GithubException e) {
			logger.error("createPipeline :: GithubException: {}", e.getMessage(), e);
			throw new PipelineException(e);
		}

		try {
			gitService.cloneRepository(workingDirectory, githubConfiguration.getCredentials().getUserName(),
					pipelineName);
			mavenService.initializeProjectWithMavenArchetype(workingDirectory, javaPackage, pipelineName);
			gitService.commitAndPush(workingDirectory, pipelineName, githubPipelineConfiguration);
			jenkinsPipelineConfigurationModel = jenkins.createMultibranchPipelineJob(jenkinsConfiguration,
					githubPipelineConfiguration, pipelineName);
		}
		catch (final GitException | MavenException | JenkinsException e) {
			logger.error("createPipeline :: Exception: {}", e.getMessage(), e);
			tryDeleteGithubRepository(pipelineName, githubConfiguration);
			throw new PipelineException(e);
		}
		finally {
			final File localGitRepository = new File(String.format("%s/%s", workingDirectory, pipelineName));
			removeDirectory(localGitRepository); // TODO handle the case of multiple requests with the same name
			// or maybe move this behind the git or maven service facades
		}

		final PipelineModel pipeline = new PipelineModel();
		pipeline.setGithubPipelineConfiguration(githubPipelineConfiguration);
		pipeline.setJenkins(jenkinsPipelineConfigurationModel);
		final PipelineModel savedPipeline = pipelineConfigurationRepository.save(pipeline);

		logger.debug("doCreatePipeline :: returning: {}", savedPipeline);

		return savedPipeline;
	}

	private void tryDeleteGithubRepository(final String pipelineName,
			final GithubConfigurationModel githubConfiguration) {

		try {
			github.deleteRepository(githubConfiguration, pipelineName);
		}
		catch (GithubException e) {

			logger.error("createPipeline :: delete github repository :: unable to delete github repository: {}",
					e.getMessage(), e);
		}
	}

	private static void removeDirectory(final File dir) {

		if (dir.isDirectory()) {
			final File[] files = dir.listFiles();
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
