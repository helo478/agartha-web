package com.helo478.agartha.pipeline;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.helo478.agartha.dockerhub.DockerHubPipelineConfigurationModel;
import com.helo478.agartha.github.GithubPipelineConfigurationModel;
import com.helo478.agartha.jenkins.JenkinsPipelineConfigurationModel;
import com.helo478.agartha.kubernetes.KubernetesPipelineConfigurationModel;

@Entity
@Table(name = "pipeline")
public class PipelineModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pipeline_id")
	private int id;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "github_pipeline_configuration_id", referencedColumnName = "github_pipeline_configuration_id")
	private GithubPipelineConfigurationModel github;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "jenkins_pipeline_configuration_id", referencedColumnName = "jenkins_pipeline_configuration_id")
	private JenkinsPipelineConfigurationModel jenkins;

//	@OneToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name = "dockerhub_pipeline_configuration_id", referencedColumnName = "dockerhub_pipeline_configuration_id")
//	private DockerHubPipelineConfigurationModel docker;
//
//	@OneToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name = "kubernetes_pipeline_configuration_id", referencedColumnName = "kubernetes_pipeline_configuration_id")
//	private KubernetesPipelineConfigurationModel kubernetes;

	public int getId() {
		return id;
	}

	public void setId(final int id) {
		this.id = id;
	}

	public GithubPipelineConfigurationModel getGithubPipelineConfiguration() {
		return github;
	}

	public void setGithubPipelineConfiguration(GithubPipelineConfigurationModel githubPipelineConfiguration) {
		this.github = githubPipelineConfiguration;
	}

	public JenkinsPipelineConfigurationModel getJenkins() {
		return jenkins;
	}

	public void setJenkins(JenkinsPipelineConfigurationModel jenkins) {
		this.jenkins = jenkins;
	}

//	public DockerHubPipelineConfigurationModel getDocker() {
//		return docker;
//	}
//
//	public void setDocker(DockerHubPipelineConfigurationModel docker) {
//		this.docker = docker;
//	}
//
//	public KubernetesPipelineConfigurationModel getKubernetes() {
//		return kubernetes;
//	}
//
//	public void setKubernetes(KubernetesPipelineConfigurationModel kubernetes) {
//		this.kubernetes = kubernetes;
//	}

}
