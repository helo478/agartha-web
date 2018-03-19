package com.helo478.agartha.pipeline.jenkins;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class JenkinsPipelineConfiguration {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String jobName;
	
	@ManyToOne
	private JenkinsConfiguration jenkinsConfiguration;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public JenkinsConfiguration getJenkinsConfiguration() {
		return jenkinsConfiguration;
	}

	public void setJenkinsConfiguration(JenkinsConfiguration jenkinsConfiguration) {
		this.jenkinsConfiguration = jenkinsConfiguration;
	}

}
