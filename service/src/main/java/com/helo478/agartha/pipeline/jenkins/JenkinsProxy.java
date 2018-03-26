package com.helo478.agartha.pipeline.jenkins;

import java.net.URI;

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
import org.springframework.web.client.RestTemplate;

import com.helo478.agartha.pipeline.github.GithubConfiguration;
import com.helo478.agartha.pipeline.github.GithubCredentials;
import com.helo478.agartha.pipeline.github.GithubPipelineConfiguration;
import com.helo478.agartha.pipeline.github.NewRepositoryModel;

@Component
public class JenkinsProxy {
	
	private static Logger logger = LoggerFactory.getLogger(JenkinsProxy.class);

	@Autowired
	private RestTemplate restTemplate;

	public JenkinsPipelineConfiguration createMultibranchPipelineJob(final JenkinsConfiguration jenkinsConfiguration,
			final String newJobName) throws JenkinsException {
		
		logger.trace("createMultibranchPipelineJob :: entering: {}, {}", jenkinsConfiguration, newJobName);
		
		String jenkinsUrl = String.format("", jenkinsConfiguration.getHostUrl());

		MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthHeaderValue(jenkinsConfiguration));

		try {
			final RequestEntity<NewRepositoryModel> request = new RequestEntity<NewRepositoryModel>(
					NewJenkinsJobModel.of(newJobName), headers, HttpMethod.POST, new URI(jenkinsUrl));

			final ResponseEntity<String> response = restTemplate.exchange(request, String.class);

			if (response.getStatusCode().is2xxSuccessful()) {

				final GithubPipelineConfiguration githubPipelineConfiguration = new GithubPipelineConfiguration();
				githubPipelineConfiguration.setGithubConfiguration(githubConfiguration);
				githubPipelineConfiguration.setRepositoryName(newRepositoryName);
				return githubPipelineConfiguration;
			}
		
		restTemplate.exchange(requestEntity, String.class);

		throw new JenkinsException("not yet implemented");
	}


	
	private String getBasicAuthHeaderValue(final JenkinsConfiguration jenkinsConfiguration) {

		final JenkinsCredentials credentials = jenkinsConfiguration.getJenkinsCredentials();
		final byte[] encodedAuth = Base64
				.encodeBase64(String.format("%s:%s", credentials.getUserName(), credentials.getPassword()).getBytes());

		String authHeader = "Basic " + new String(encodedAuth);
		
		return authHeader;
		
	}
	
}