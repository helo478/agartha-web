package com.helo478.agartha.pipeline.github;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.eclipse.jgit.transport.CredentialsProvider;
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider;
import org.springframework.util.StringUtils;

import com.helo478.agartha.pipeline.git.JgitCredentialsProvider;

@Entity
public class GithubPipelineConfiguration implements JgitCredentialsProvider {

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

	@Override
	public CredentialsProvider getJgitCredentials() {

		if (githubConfiguration == null || githubConfiguration.getCredentials() == null
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getUserName())
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getPassword())) {

			throw new IllegalStateException("invalid githubConfiguration or nested credentials: null"); 
		}

		final String user = githubConfiguration.getCredentials().getUserName();
		final String password = githubConfiguration.getCredentials().getPassword();
		return new UsernamePasswordCredentialsProvider(user, password);
	}

	public String getRemoteRepositoryPath() {

		if (githubConfiguration == null || githubConfiguration.getCredentials() == null
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getUserName())
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getPassword())) {

			throw new IllegalStateException("invalid githubConfiguration or nested credentials: null");
		}

		final String userName = githubConfiguration.getCredentials().getUserName();
		return String.format("%s/%s.git", userName, repositoryName);
	}

}
