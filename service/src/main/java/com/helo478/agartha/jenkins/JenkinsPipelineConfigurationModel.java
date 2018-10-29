package com.helo478.agartha.jenkins;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "jenkins_pipeline_configuration")
public class JenkinsPipelineConfigurationModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "jenkins_pipeline_configuration_id")
	private int id;

	@Column(name = "jenkins_job_name")
	private String jobName;
	
	@Column(name = "jenkins_configuration_id")
	private int jenkinsConfigurationId;

	@ManyToOne
	@JoinColumn(name = "jenkins_configuration_id", referencedColumnName = "jenkins_configuration_id")
	@JsonIgnore
	@Transient
	private JenkinsConfigurationModel jenkinsConfiguration;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public int getJenkinsConfigurationId() {
		return jenkinsConfigurationId;
	}

	public void setJenkinsConfigurationId(int jenkinsConfigurationId) {
		this.jenkinsConfigurationId = jenkinsConfigurationId;
	}

	public JenkinsConfigurationModel getJenkinsConfiguration() {
		return jenkinsConfiguration;
	}

	public void setJenkinsConfiguration(JenkinsConfigurationModel jenkinsConfiguration) {
		this.jenkinsConfiguration = jenkinsConfiguration;
	}

}
