package com.helo478.agartha.github;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/github")
public class GithubConfigurationController {
	
	@Autowired
	private GithubService githubService;
	
	@GetMapping("/configurations")
	public ResponseEntity<GithubConfigurationList> getGithubConfigurations() {
		
		return ResponseEntity.ok(new GithubConfigurationList(githubService.readAllGithubConfigurations()));
	}

	@PostMapping("/configurations")
	public ResponseEntity<GithubConfigurationModel> postGithubConfiguration(
			final @RequestBody GithubConfigurationModel model) {
		
		return ResponseEntity.ok(githubService.createGithubConfiguration(model));
	}
}
