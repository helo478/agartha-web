package com.helo478.agartha.pipeline;

import com.helo478.agartha.github.GithubConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsConfigurationModel;

public interface PipelineService {

	void createPipeline(GithubConfigurationModel githubConfiguration, JenkinsConfigurationModel jenkinsConfiguration,
			NewPipelineRequest newPipelineRequest) throws PipelineException;

}
