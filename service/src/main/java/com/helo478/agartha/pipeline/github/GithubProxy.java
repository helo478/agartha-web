package com.helo478.agartha.pipeline.github;

import java.net.URI;
import java.net.URISyntaxException;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Component
public class GithubProxy {

	private static final Logger logger = LoggerFactory.getLogger(GithubProxy.class);

	private static final String API_ROOT = "https://api.github.com";

	private static final String REPOSITORY_PATH = "user/repos";

	@Autowired
	private RestTemplate restTemplate;

	public GithubPipelineConfiguration createRepository(final GithubConfiguration githubConfiguration,
			final String newRepositoryName) throws GithubException {

		final String url = String.format("%s/%s", API_ROOT, REPOSITORY_PATH);

		logger.info("URL: {}", url);

		MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthHeaderValue(githubConfiguration));

		try {
			final RequestEntity<NewRepositoryModel> request = new RequestEntity<NewRepositoryModel>(
					NewRepositoryModel.of(newRepositoryName), headers, HttpMethod.POST, new URI(url));

			final ResponseEntity<String> response = restTemplate.exchange(request, String.class);

			if (response.getStatusCode().is2xxSuccessful()) {

				final GithubPipelineConfiguration githubPipelineConfiguration = new GithubPipelineConfiguration();
				githubPipelineConfiguration.setGithubConfiguration(githubConfiguration);
				githubPipelineConfiguration.setRepositoryName(newRepositoryName);
				return githubPipelineConfiguration;
			}

			throw new RuntimeException("Unhandled error case for response status: " + response.getStatusCodeValue());

		} catch (final URISyntaxException e) {

			logger.error("createRepository :: URISyntaxException");

			throw new RuntimeException("Unhandled exception", e);

		} catch (final RestClientException e) {

			logger.error("RestClientException: {}", e.getMessage());

			throw new GithubException("Unhandled HTTP problem", e);
		}
	}

	public void deleteRepository(GithubConfiguration githubConfiguration, String repositoryToDeleteName)
			throws GithubException {
		
		logger.trace("deleteRepository :: entering: {}, {}", githubConfiguration, repositoryToDeleteName);

		final String userName = githubConfiguration.getCredentials().getUserName();
		final String url = String.format("%s/repos/%s/%s", API_ROOT, userName, repositoryToDeleteName);

		logger.info("deleteRepository (repositoryToDeleteName: {}) :: url: {}", repositoryToDeleteName, url);

		MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthHeaderValue(githubConfiguration));

		try {
			final RequestEntity<NewRepositoryModel> request = new RequestEntity<NewRepositoryModel>(
					NewRepositoryModel.of(repositoryToDeleteName), headers, HttpMethod.DELETE, new URI(url));

			restTemplate.exchange(request, String.class);

		} catch (final URISyntaxException e) {

			logger.error("deleteRepository :: URISyntaxException");

			throw new RuntimeException("Unhandled exception", e);

		} catch (final RestClientException e) {

			logger.error("deleteRepository :: RestClientException: {}", e.getMessage());

			throw new GithubException("Unhandled HTTP problem", e);
		}
		
		logger.trace("deleteRepository :: returning");
	}
	
	private String getBasicAuthHeaderValue(final GithubConfiguration githubConfiguration) {

		final GithubCredentials credentials = githubConfiguration.getCredentials();
		final byte[] encodedAuth = Base64
				.encodeBase64(String.format("%s:%s", credentials.getUserName(), credentials.getPassword()).getBytes());

		String authHeader = "Basic " + new String(encodedAuth);
		
		return authHeader;
		
	}

}
