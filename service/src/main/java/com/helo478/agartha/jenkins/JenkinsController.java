package com.helo478.agartha.jenkins;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jenkins")
public class JenkinsController {
	
	@Autowired
	private JenkinsService jenkinsService;
	
	@GetMapping("/configurations")
	public ResponseEntity<JenkinsConfigurationList> getJenkinsConfigurations() {
		
		return ResponseEntity.ok(new JenkinsConfigurationList(jenkinsService.readAllJenkinsConfigurations()));
	}
	
	@PostMapping("/configurations")
	public ResponseEntity<JenkinsConfigurationModel> postJenkinsConfiguration(final @RequestBody JenkinsConfigurationModel model) {
		
		return ResponseEntity.ok(jenkinsService.createJenkinsConfiguration(model));
	}
	
}
