package com.helo478.agartha.pipeline.github;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class GithubConfiguration {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@ManyToOne
	private GithubCredentials credentials;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public GithubCredentials getCredentials() {
		return credentials;
	}

	public void setCredentials(GithubCredentials credentials) {
		this.credentials = credentials;
	}

}
