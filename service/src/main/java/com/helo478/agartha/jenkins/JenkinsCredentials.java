package com.helo478.agartha.jenkins;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class JenkinsCredentials {

	@Column(name = "jenkins_user_name")
	private String userName;

	@Column(name = "jenkins_token")
	private String token;

	public String getUserName() {
		return userName;
	}

	public void setUserName(final String userName) {
		this.userName = userName;
	}

	public String getToken() {
		return token;
	}

	public void setToken(final String token) {
		this.token = token;
	}

}
