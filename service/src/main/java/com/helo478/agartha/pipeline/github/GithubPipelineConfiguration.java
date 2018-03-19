package com.helo478.agartha.pipeline.github;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class GithubPipelineConfiguration {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String repositoryName;

	@ManyToOne
	private GithubConfiguration githubConfiguration;

	public String getRepositoryName() {
		return repositoryName;
	}

	public void setRepositoryName(String repositoryName) {
		this.repositoryName = repositoryName;
	}

	public GithubConfiguration getGithubConfiguration() {
		return githubConfiguration;
	}

	public void setGithubConfiguration(GithubConfiguration githubConfiguration) {
		this.githubConfiguration = githubConfiguration;
	}

}
