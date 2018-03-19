package com.helo478.agartha.pipeline.github;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class GithubProxyTest {

	@Value("${GITHUB_USER}")
	private String githubUser;

	@Value("${GITHUB_PASSWORD}")
	private String githubPassword;

	@Autowired
	private GithubProxy sut;

	@Test
	public void checkJsonSerialization() throws JsonProcessingException {

		final NewRepositoryModel model = NewRepositoryModel.of("test");

		final ObjectMapper objectMapper = new ObjectMapper();

		System.out.println(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(model));
	}

	@Test
	public void triggerCreateRepositoryRequest() throws GithubException {

		final GithubCredentials credentials = new GithubCredentials();
		credentials.setUserName(githubUser);
		credentials.setPassword(githubPassword);

		final GithubConfiguration githubConfiguration = new GithubConfiguration();
		githubConfiguration.setCredentials(credentials);

		sut.createRepository(githubConfiguration, "SpamAndEggs");
	}

	@Test
	public void triggerDeleteRepositoryRequest() throws GithubException {

		final GithubCredentials credentials = new GithubCredentials();
		credentials.setUserName(githubUser);
		credentials.setPassword(githubPassword);

		final GithubConfiguration githubConfiguration = new GithubConfiguration();
		githubConfiguration.setCredentials(credentials);

		sut.deleteRepository(githubConfiguration, "SpamAndEggs");

	}

}
