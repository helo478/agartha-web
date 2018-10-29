package com.helo478.agartha.github;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "github_configuration")
public class GithubConfigurationModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "github_configuration_id")
	private int id;

	@Embedded
	private GithubCredentialsModel credentials;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public GithubCredentialsModel getCredentials() {
		return credentials;
	}

	public void setCredentials(GithubCredentialsModel credentials) {
		this.credentials = credentials;
	}

}
