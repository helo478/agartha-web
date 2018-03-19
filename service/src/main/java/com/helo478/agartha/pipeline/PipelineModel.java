package com.helo478.agartha.pipeline;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.helo478.agartha.pipeline.dockerhub.DockerHubPipelineConfiguration;
import com.helo478.agartha.pipeline.github.GithubPipelineConfiguration;
import com.helo478.agartha.pipeline.jenkins.JenkinsPipelineConfiguration;
import com.helo478.agartha.pipeline.kubernetes.KubernetesPipelineConfiguration;

@Entity
@Table(name = "pipeline")
public class PipelineModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@ManyToOne
	private GithubPipelineConfiguration github;

	@ManyToOne
	private JenkinsPipelineConfiguration jenkins;

	@ManyToOne
	private DockerHubPipelineConfiguration docker;

	@ManyToOne
	private KubernetesPipelineConfiguration kubernetes;

	public long getId() {
		return id;
	}

	public void setId(final long id) {
		this.id = id;
	}

	public GithubPipelineConfiguration getGithubPipelineConfiguration() {
		return github;
	}

	public void setGithubPipelineConfiguration(GithubPipelineConfiguration githubPipelineConfiguration) {
		this.github = githubPipelineConfiguration;
	}

	public JenkinsPipelineConfiguration getJenkins() {
		return jenkins;
	}

	public void setJenkins(JenkinsPipelineConfiguration jenkins) {
		this.jenkins = jenkins;
	}

	public DockerHubPipelineConfiguration getDocker() {
		return docker;
	}

	public void setDocker(DockerHubPipelineConfiguration docker) {
		this.docker = docker;
	}

	public KubernetesPipelineConfiguration getKubernetes() {
		return kubernetes;
	}

	public void setKubernetes(KubernetesPipelineConfiguration kubernetes) {
		this.kubernetes = kubernetes;
	}

}
