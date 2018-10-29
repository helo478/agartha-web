package com.helo478.agartha.jenkins;

public interface JenkinsService {

	Iterable<JenkinsConfigurationModel> readAllJenkinsConfigurations();

	JenkinsConfigurationModel createJenkinsConfiguration(JenkinsConfigurationModel model);

	JenkinsPipelineConfigurationModel createJenkinsPipelineConfiguration(JenkinsPipelineConfigurationModel model);

}
