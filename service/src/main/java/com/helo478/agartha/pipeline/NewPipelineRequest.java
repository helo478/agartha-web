package com.helo478.agartha.pipeline;

public class NewPipelineRequest {

	private String pipelineName;
	
	private String javaPackage;

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
	
}
