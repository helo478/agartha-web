package com.helo478.agartha.pipeline;

public class NewPipelineRequest {

	private String pipelineName;
	
	private String javaPackage;
	
	private int githubConfigurationId;
	
	private int jenkinsConfigurationId;

	public String getPipelineName() {
		return pipelineName;
	}

	public void setPipelineName(final String pipelineName) {
		this.pipelineName = pipelineName;
	}

	public String getJavaPackage() {
		return javaPackage;
	}

	public void setJavaPackage(final String javaPackage) {
		this.javaPackage = javaPackage;
	}

	public int getGithubConfigurationId() {
		return githubConfigurationId;
	}

	public void setGithubConfigurationId(int githubConfigurationId) {
		this.githubConfigurationId = githubConfigurationId;
	}

	public int getJenkinsConfigurationId() {
		return jenkinsConfigurationId;
	}

	public void setJenkinsConfigurationId(int jenkinsConfigurationId) {
		this.jenkinsConfigurationId = jenkinsConfigurationId;
	}
	
}
