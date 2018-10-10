package com.helo478.agartha.pipeline.jenkins;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.test.util.ReflectionTestUtils;
import org.springframework.web.client.RestTemplate;

import com.helo478.agartha.github.GithubConfigurationModel;
import com.helo478.agartha.github.GithubCredentials;
import com.helo478.agartha.github.GithubPipelineConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsCredentials;
import com.helo478.agartha.jenkins.JenkinsException;
import com.helo478.agartha.jenkins.JenkinsProxy;

public class JenkinsProxyTest {

	private static final String TEST_JOB_NAME = "TEST_JOB_" + System.currentTimeMillis();

	private static final String TEST_HOST_AND_PORT = "192.168.56.101:8080";

	private static final String PRP_USER_NAME = "user";

	private static final String PRP_TOKEN = "token";

	private static final JenkinsProxy sut = new JenkinsProxy();

	private static final String TEST_REPOSITORY_NAME = "agartha-web";

	private static final String PRP_GITHUB_USER_NAME = "github.username";

	private static final String PRP_GITHUB_PASSWORD = "github.password";

	@BeforeClass
	public static void beforeClass() {

		ReflectionTestUtils.setField(sut, "restTemplate", new RestTemplate());
	}

	@Test
	public void tmpRunner() throws JenkinsException {

		sut.createMultibranchPipelineJob(getTestJenkinsConfiguration(), getTestGithubPipelineConfiguration(),
				TEST_JOB_NAME);
	}

	private JenkinsConfigurationModel getTestJenkinsConfiguration() {

		final JenkinsCredentials credentials = new JenkinsCredentials();
		credentials.setUserName(System.getProperty(PRP_USER_NAME));
		credentials.setToken(System.getProperty(PRP_TOKEN));

		final JenkinsConfigurationModel config = new JenkinsConfigurationModel();
		config.setHostAndPort(TEST_HOST_AND_PORT);
		config.setJenkinsCredentials(credentials);

		return config;
	}

	private GithubPipelineConfigurationModel getTestGithubPipelineConfiguration() {

		final GithubCredentials githubCredentials = new GithubCredentials();
		githubCredentials.setUserName(System.getProperty(PRP_GITHUB_USER_NAME));
		githubCredentials.setPassword(System.getProperty(PRP_GITHUB_PASSWORD));

		final GithubConfigurationModel githubConfiguration = new GithubConfigurationModel();
		githubConfiguration.setCredentials(githubCredentials);

		final GithubPipelineConfigurationModel githubPipelineConfiguration = new GithubPipelineConfigurationModel();
		githubPipelineConfiguration.setRepositoryName(TEST_REPOSITORY_NAME);
		githubPipelineConfiguration.setGithubConfiguration(githubConfiguration);

		return githubPipelineConfiguration;
	}

}
