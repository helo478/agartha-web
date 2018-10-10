package com.helo478.agartha.jenkins;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.text.StrSubstitutor;
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

import com.helo478.agartha.github.GithubPipelineConfigurationModel;

@Component
public class JenkinsProxy {

	private static Logger logger = LoggerFactory.getLogger(JenkinsProxy.class);

	private static final String JENKINS_AUTHENTICATED_URL_ROOT = "http://%s:%s@%s";

	private static final String JENKINS_CRUMB_ISSUER_URL_PATH = "/crumbIssuer/api/json";

	private static final String JENKINS_CREATE_JOB_URL_PATH = "/createItem?name=%s";

	private static final String JENKINS_SCAN_REPOSITORY_PATH = "/job/%s/build?delay=0";

	@Autowired
	private RestTemplate restTemplate;

	public JenkinsPipelineConfigurationModel createMultibranchPipelineJob(final JenkinsConfigurationModel jenkinsConfiguration,
			final GithubPipelineConfigurationModel githubPipelineConfiguration, final String newJobName)
			throws JenkinsException {

		logger.trace("createMultibranchPipelineJob :: entering: {}, {}", jenkinsConfiguration, newJobName);

		final String user = jenkinsConfiguration.getJenkinsCredentials().getUserName();
		final String token = jenkinsConfiguration.getJenkinsCredentials().getToken();
		final String hostAndPort = jenkinsConfiguration.getHostAndPort();
		final String repository = githubPipelineConfiguration.getRepositoryName();

		final Map<String, String> configXmlParameters = new HashMap<>();
		configXmlParameters.put("jobName", newJobName);
		configXmlParameters.put("owner", user);
		configXmlParameters.put("repository", repository);
		final String body = parameterizeConfigXml(getConfigFile(), configXmlParameters);

		try {

			String crumb = getCrumb(user, token, hostAndPort);
			createJob(newJobName, user, token, hostAndPort, body, crumb);
			scanRepository(user, token, hostAndPort, newJobName, crumb);
		}
		catch (final URISyntaxException e) {

			logger.error("createMultibranchPipelineJob :: URISyntaxException");

			throw new RuntimeException("Unhandled exception", e);
		}
		catch (final RestClientException e) {

			logger.error("createMultibranchPipelineJob :: RestClientException: {}", e.getMessage(), e);

			throw new JenkinsException("Unhandled HTTP problem", e);
		}

		final JenkinsPipelineConfigurationModel jenkinsPipelineConfiguration = new JenkinsPipelineConfigurationModel();
		jenkinsPipelineConfiguration.setJenkinsConfiguration(jenkinsConfiguration);
		jenkinsPipelineConfiguration.setJobName(newJobName);
		return jenkinsPipelineConfiguration;
	}

	private void scanRepository(String user, String token, String hostAndPort, String newJobName, final String crumb) throws URISyntaxException {
		
		final URI createMultibranchPipelineJobUri = new URI(
				String.format(JENKINS_AUTHENTICATED_URL_ROOT, user, token, hostAndPort)
						+ String.format(JENKINS_SCAN_REPOSITORY_PATH, newJobName));

		final MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthorization(user, token));
		headers.add("Jenkins-Crumb", crumb);
		headers.add("Content-Type", "application/xml");

		final RequestEntity<Void> request = new RequestEntity<Void>(null, headers, HttpMethod.POST,
				createMultibranchPipelineJobUri);

		restTemplate.exchange(request, String.class);
	}

	private void createJob(final String newJobName, final String user, final String token,
			final String hostAndPort, final String body, String crumb) throws URISyntaxException {

		final URI createMultibranchPipelineJobUri = new URI(
				String.format(JENKINS_AUTHENTICATED_URL_ROOT, user, token, hostAndPort)
						+ String.format(JENKINS_CREATE_JOB_URL_PATH, newJobName));

		final MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthorization(user, token));
		headers.add("Jenkins-Crumb", crumb);
		headers.add("Content-Type", "application/xml");

		final RequestEntity<String> request = new RequestEntity<String>(body, headers, HttpMethod.POST,
				createMultibranchPipelineJobUri);

		restTemplate.exchange(request, String.class);
	}

	private String getCrumb(final String user, final String token, final String hostAndPort) throws URISyntaxException {

		final URI uri = new URI(String.format(JENKINS_AUTHENTICATED_URL_ROOT, user, token, hostAndPort)
				+ JENKINS_CRUMB_ISSUER_URL_PATH);

		final MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.add("Authorization", getBasicAuthorization(user, token));

		RequestEntity<Void> request = new RequestEntity<Void>(null, headers, HttpMethod.GET, uri);
		ResponseEntity<JenkinsCrumb> response = restTemplate.exchange(request, JenkinsCrumb.class);

		return response.getBody().crumb;
	}
	
	private String getBasicAuthorization(final String user, final String token) {
		
		String encodeBase64String = Base64.encodeBase64String(String.format("%s:%s", user, token).getBytes());
		return String.format("Basic %s", encodeBase64String);
	}

	private String parameterizeConfigXml(final String configXmlTpl, final Map<String, String> parameters) {

		StrSubstitutor sub = new StrSubstitutor(parameters);
		return sub.replace(configXmlTpl);
	}

	private String getConfigFile() throws JenkinsException {

		try (final BufferedReader reader = new BufferedReader(new InputStreamReader(JenkinsProxy.class.getClassLoader()
				.getResourceAsStream("github-multibranch-pipeline-config.xml.tpl")))) {

			final StringBuilder sb = new StringBuilder();
			String line;

			while ((line = reader.readLine()) != null) {

				sb.append(line);
			}

			return sb.toString();
		}
		catch (final IOException e) {

			throw new JenkinsException("unable to read config template file");
		}
	}

	private static class JenkinsCrumb {

		public String crumb;

		@SuppressWarnings("unused")
		public String crumbRequestField;
	}

}