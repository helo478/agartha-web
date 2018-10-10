package com.helo478.agartha.pipeline;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.helo478.agartha.github.GithubConfigurationModel;
import com.helo478.agartha.github.GithubCredentials;
import com.helo478.agartha.jenkins.JenkinsConfigurationModel;

@RestController
@RequestMapping("/pipeline")
public class PipelineController {
	
	private static final Logger logger = LoggerFactory.getLogger(PipelineController.class);
	
	private GithubConfigurationModel githubConfiguration;
	
	private JenkinsConfigurationModel jenkinsConfiguration;
	
	@Value("${GITHUB_USER}")
	private String githubUser;
	
	@Value("${GITHUB_PASSWORD}")
	private String githubPassword;
	
	@Value("${JENKINS_HOST_AND_PORT}")
	private String jenkinsHostAndPort;
	
	@Autowired
	private PipelineService pipelineService;
	
	@PostConstruct
	public void logValues() {
		
		logger.trace("logValues :: entering");
		logger.info("logValues :: githubUser: {}", githubUser);
		logger.info("logValues :: githubPassword: {}", githubPassword.replaceAll(".",  "*"));
		logger.info("logValues :: jenkinsHostAndPort: {}", jenkinsHostAndPort);
		logger.trace("logVAlues :: returning");
	}
	
	@PostConstruct
	public void loadCredentials() {
		
		final GithubCredentials githubCredentials = new GithubCredentials();
		githubCredentials.setUserName(githubUser);
		githubCredentials.setPassword(githubPassword);
		
		githubConfiguration = new GithubConfigurationModel();
		githubConfiguration.setCredentials(githubCredentials);
		
		jenkinsConfiguration = new JenkinsConfigurationModel();
		jenkinsConfiguration.setHostAndPort(jenkinsHostAndPort);
	}

	@PostMapping
	public ResponseEntity<Void> postPipeline(final @RequestBody NewPipelineRequest newPipelineRequest) {
		
		logger.debug("postPipeline :: entering({}) ", newPipelineRequest);
		
		try {
			pipelineService.createPipeline(githubConfiguration, jenkinsConfiguration, newPipelineRequest);
			return ResponseEntity.ok().build();
		}
		catch (final PipelineException e) {
			
			logger.error("postPipeline ({}) :: PipelineException: {}", newPipelineRequest, e.getMessage(), e);
			return ResponseEntity.badRequest().build();
		}
	}
	
}
