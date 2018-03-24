package com.helo478.agartha;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.helo478.agartha.pipeline.PipelineService;
import com.helo478.agartha.pipeline.github.GithubConfiguration;
import com.helo478.agartha.pipeline.github.GithubCredentials;
import com.helo478.agartha.pipeline.jenkins.JenkinsConfiguration;
import com.helo478.agartha.pipeline.model.NewPipelineRequest;

@RestController
@RequestMapping("/pipeline")
public class PipelineController {
	
	private final GithubConfiguration githubConfiguration;
	
	private final JenkinsConfiguration jenkinsConfiguration;
	
	@Value("${GITHUB_PASSWORD}")
	private String githubPassword;
	
//	private final KubernetesConfiguration kubernetesConfiguration;
	
	public PipelineController() {
		
		final GithubCredentials githubCredentials = new GithubCredentials();
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
		
		pipelineService.createPipeline(githubConfiguration, jenkinsConfiguration, newPipelineRequest);
		
		return ResponseEntity.ok().build();
	}
	
}
