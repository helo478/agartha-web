package com.helo478.agartha.github;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GithubServiceImpl implements GithubService {

	@Autowired
	private GithubConfigurationRepository githubConfigurationRepository;
	
	@Autowired
	private GithubPipelineConfigurationRepository githubPipelineConfigurationRepository;

	@Override
	public Iterable<GithubConfigurationModel> readAllGithubConfigurations() {

		return githubConfigurationRepository.findAll();
	}

	@Override
	public GithubConfigurationModel createGithubConfiguration(GithubConfigurationModel model) {

		return githubConfigurationRepository.save(model);
	}

	@Override
	public GithubPipelineConfigurationModel createGithubPipelineConfiguration(GithubPipelineConfigurationModel model) {

		throw new RuntimeException("Not yet implemented");
	}

}
