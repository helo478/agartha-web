package com.helo478.agartha;

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

import com.helo478.agartha.pipeline.PipelineException;
import com.helo478.agartha.pipeline.PipelineService;
import com.helo478.agartha.pipeline.github.GithubConfiguration;
import com.helo478.agartha.pipeline.github.GithubCredentials;
import com.helo478.agartha.pipeline.jenkins.JenkinsConfiguration;
import com.helo478.agartha.pipeline.model.NewPipelineRequest;

@RestController
@RequestMapping("/pipeline")
public class PipelineController {
	
	private static final Logger logger = LoggerFactory.getLogger(PipelineController.class);
	
	private GithubConfiguration githubConfiguration;
	
	private JenkinsConfiguration jenkinsConfiguration;
	
	@Value("${GITHUB_USER}")
	private String githubUser;
	
	@Value("${GITHUB_PASSWORD}")
	private String githubPassword;
	
	@PostConstruct
	public void logValues() {
		
		logger.trace("logValues :: entering");
		logger.info("logValues :: githubUser: {}", githubUser);
		logger.info("logValues :: githubPassword: {}", githubPassword);
		logger.trace("logVAlues :: returning");
	}
	
	@PostConstruct
	public void loadCredentials() {
		
		final GithubCredentials githubCredentials = new GithubCredentials();
		githubCredentials.setUserName(githubUser);
		githubCredentials.setPassword(githubPassword);
		
		githubConfiguration = new GithubConfiguration();
		githubConfiguration.setCredentials(githubCredentials);
		
		jenkinsConfiguration = new JenkinsConfiguration();
	}
	
	@Autowired
	private PipelineService pipelineService;

	@PostMapping
	public ResponseEntity<Void> postPipeline(final @RequestBody NewPipelineRequest newPipelineRequest) {
		
		System.out.println("Received Foo: " + newPipelineRequest);
		
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
