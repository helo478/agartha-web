package com.helo478.agartha.github;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.eclipse.jgit.transport.CredentialsProvider;
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider;
import org.springframework.util.StringUtils;

import com.helo478.agartha.git.JgitCredentialsProvider;

@Entity
@Table(name = "github_pipeline_configuration")
public class GithubPipelineConfigurationModel implements JgitCredentialsProvider {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "github_pipeline_configuration_id")
	private int id;

	@Column(name = "github_repository_name")
	private String repositoryName;

	@ManyToOne
	@JoinColumn(name = "github_configuration_id", referencedColumnName = "github_configuration_id")
	private GithubConfigurationModel githubConfiguration;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRepositoryName() {
		return repositoryName;
	}

	public void setRepositoryName(String repositoryName) {
		this.repositoryName = repositoryName;
	}

	public GithubConfigurationModel getGithubConfiguration() {
		return githubConfiguration;
	}

	public void setGithubConfiguration(GithubConfigurationModel githubConfiguration) {
		this.githubConfiguration = githubConfiguration;
	}

	@Override
	public CredentialsProvider getJgitCredentials() {

		if (githubConfiguration == null || githubConfiguration.getCredentials() == null
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getUserName())
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getPassword())) {

		throw new IllegalStateException("invalid githubConfiguration or nested credentials: null"); }

		final String user = githubConfiguration.getCredentials().getUserName();
		final String password = githubConfiguration.getCredentials().getPassword();
		return new UsernamePasswordCredentialsProvider(user, password);
	}

	public String getRemoteRepositoryPath() {

		if (githubConfiguration == null || githubConfiguration.getCredentials() == null
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getUserName())
				|| StringUtils.isEmpty(githubConfiguration.getCredentials().getPassword())) {

		throw new IllegalStateException("invalid githubConfiguration or nested credentials: null"); }

		final String userName = githubConfiguration.getCredentials().getUserName();
		return String.format("%s/%s.git", userName, repositoryName);
	}

}
