package com.helo478.agartha.pipeline;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helo478.agartha.pipeline.dockerhub.DockerHubProxy;
import com.helo478.agartha.pipeline.github.GithubConfiguration;
import com.helo478.agartha.pipeline.github.GithubException;
import com.helo478.agartha.pipeline.github.GithubProxy;
import com.helo478.agartha.pipeline.jenkins.JenkinsConfiguration;
import com.helo478.agartha.pipeline.jenkins.JenkinsException;
import com.helo478.agartha.pipeline.jenkins.JenkinsProxy;
import com.helo478.agartha.pipeline.kubernetes.KubernetesProxy;

@Service
public class PipelineService {
	
	private static final Logger logger = LoggerFactory.getLogger(PipelineService.class); 
	
	@Autowired
	private GithubProxy github;
	
	@Autowired
	private JenkinsProxy jenkins;
	
	@Autowired
	private DockerHubProxy dockerHub;
	
	@Autowired
	private KubernetesProxy kubernetes;
	
	public void createPipeline(final GithubConfiguration githubConfiguration, final JenkinsConfiguration jenkinsConfiguration, final String newPipelineName) {
		
		try {
			
			github.createRepository(githubConfiguration, newPipelineName);
			jenkins.createMultibranchPipelineJob(jenkinsConfiguration, newPipelineName);
		}
		catch (final GithubException e) {
			
			logger.error("createPipeline (newPipelineName: {}) :: GithubException: {}", newPipelineName, e.getMessage());
		}
		catch (final JenkinsException e) {
			
			logger.error("createPipeline (newPipelineName: {}) :: JenkinsException: {}; rolling back github creation", newPipelineName, e.getMessage());
			
			try {
				
				github.deleteRepository(githubConfiguration, newPipelineName);
			}
			catch (final GithubException e1) {
				
				logger.error("createPipeline (newPipelineName: {}) :: JenkinsException :: GithubException: {}", newPipelineName, e1.getMessage());
			}
		}
	}

}
