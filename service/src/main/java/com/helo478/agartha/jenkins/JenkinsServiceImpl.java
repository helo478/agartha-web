package com.helo478.agartha.jenkins;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JenkinsServiceImpl implements JenkinsService {
	
	@Autowired
	private JenkinsConfigurationRepository jenkinsConfigurationRepository;
	
	@Autowired
	private JenkinsPipelineConfigurationRepository jenkinsPipelineConfigurationRepository;

	@Override
	public Iterable<JenkinsConfigurationModel> readAllJenkinsConfigurations() {

		return jenkinsConfigurationRepository.findAll();
	}

	@Override
	public JenkinsConfigurationModel createJenkinsConfiguration(JenkinsConfigurationModel model) {

		return jenkinsConfigurationRepository.save(model);
	}
	
	@Override
	public JenkinsPipelineConfigurationModel createJenkinsPipelineConfiguration(JenkinsPipelineConfigurationModel model) {
		
		// TODO: implement
		throw new RuntimeException("Not yet implemented");
	}

}
