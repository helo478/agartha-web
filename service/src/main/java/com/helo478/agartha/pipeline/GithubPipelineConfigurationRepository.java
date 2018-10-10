package com.helo478.agartha.pipeline;

import org.springframework.data.repository.CrudRepository;

import com.helo478.agartha.github.GithubPipelineConfigurationModel;

public interface GithubPipelineConfigurationRepository extends CrudRepository<GithubPipelineConfigurationModel, Integer> {

}
