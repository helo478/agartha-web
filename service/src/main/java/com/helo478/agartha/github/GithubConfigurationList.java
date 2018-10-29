package com.helo478.agartha.github;

public class GithubConfigurationList {

	private Iterable<GithubConfigurationModel> githubConfigurations;

	public GithubConfigurationList(Iterable<GithubConfigurationModel> githubConfigurations) {
		this.githubConfigurations = githubConfigurations;
	}

	public Iterable<GithubConfigurationModel> getGithubConfigurations() {
		return githubConfigurations;
	}

	public void setGithubConfigurations(Iterable<GithubConfigurationModel> githubConfigurations) {
		this.githubConfigurations = githubConfigurations;
	}
}
