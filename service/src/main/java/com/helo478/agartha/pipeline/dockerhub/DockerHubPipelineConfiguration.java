package com.helo478.agartha.pipeline.dockerhub;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DockerHubPipelineConfiguration {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

}
