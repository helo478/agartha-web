package com.helo478.agartha.pipeline;

import com.helo478.agartha.github.GithubException;
import com.helo478.agartha.jenkins.JenkinsException;

public interface PipelineService {

	void createPipeline(NewPipelineRequest newPipelineRequest)
			throws GithubException, JenkinsException, PipelineException;

}
