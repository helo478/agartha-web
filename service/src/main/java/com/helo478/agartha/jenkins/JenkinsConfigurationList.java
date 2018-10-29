package com.helo478.agartha.jenkins;

public class JenkinsConfigurationList {
	
	private Iterable<JenkinsConfigurationModel> jenkinsConfigurations;
	
	public JenkinsConfigurationList(final Iterable<JenkinsConfigurationModel> jenkinsConfigurations) {
		
		this.jenkinsConfigurations = jenkinsConfigurations;
	}

	public Iterable<JenkinsConfigurationModel> getJenkinsConfigurations() {
		return jenkinsConfigurations;
	}

	public void setJenkinsConfigurations(Iterable<JenkinsConfigurationModel> jenkinsConfigurations) {
		this.jenkinsConfigurations = jenkinsConfigurations;
	}

}
