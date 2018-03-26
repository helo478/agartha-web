package com.helo478.agartha.pipeline.jenkins;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class JenkinsConfiguration {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String hostUrl;
	
	private JenkinsCredentials jenkinsCredentials;

	public long getId() {
		return id;
	}

	public void setId(final long id) {
		this.id = id;
	}

	public String getHostUrl() {
		return hostUrl;
	}

	public void setHostUrl(final String hostUrl) {
		this.hostUrl = hostUrl;
	}

	public JenkinsCredentials getJenkinsCredentials() {
		return jenkinsCredentials;
	}

	public void setJenkinsCredentials(JenkinsCredentials jenkinsCredentials) {
		this.jenkinsCredentials = jenkinsCredentials;
	}

}
