package com.helo478.agartha.github;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class GithubCredentials {

	@Column(name = "github_user_name")
	private String userName;

	@Column(name = "github_password")
	private String password;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
