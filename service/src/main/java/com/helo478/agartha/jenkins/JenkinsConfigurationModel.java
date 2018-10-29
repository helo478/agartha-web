package com.helo478.agartha.jenkins;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "jenkins_configuration")
public class JenkinsConfigurationModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "jenkins_configuration_id")
	private int id;

	@Column(name = "jenkins_host_and_port")
	private String hostAndPort;

	@Embedded
	private JenkinsCredentialsModel jenkinsCredentials;

	public int getId() {
		return id;
	}

	public void setId(final int id) {
		this.id = id;
	}

	public String getHostAndPort() {
		return hostAndPort;
	}

	public void setHostAndPort(final String hostAndPort) {
		this.hostAndPort = hostAndPort;
	}

	public JenkinsCredentialsModel getJenkinsCredentials() {
		return jenkinsCredentials;
	}

	public void setJenkinsCredentials(final JenkinsCredentialsModel jenkinsCredentials) {
		this.jenkinsCredentials = jenkinsCredentials;
	}

}
