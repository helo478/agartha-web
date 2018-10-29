package com.helo478.agartha.github;

public interface GithubService {
	
	Iterable<GithubConfigurationModel> readAllGithubConfigurations();

	GithubConfigurationModel createGithubConfiguration(GithubConfigurationModel model);

	GithubPipelineConfigurationModel createGithubPipelineConfiguration(GithubPipelineConfigurationModel model);
}
