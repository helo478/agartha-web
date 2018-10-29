package com.helo478.agartha.pipeline;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.helo478.agartha.github.GithubException;
import com.helo478.agartha.jenkins.JenkinsException;

@RestController
@RequestMapping("/pipeline")
public class PipelineController {

	private static final Logger logger = LoggerFactory.getLogger(PipelineController.class);

	@Autowired
	private PipelineService pipelineService;

	@PostMapping
	public ResponseEntity<Void> postPipeline(final @RequestBody NewPipelineRequest newPipelineRequest) {

		logger.debug("postPipeline :: entering({}) ", newPipelineRequest);

		try {
			pipelineService.createPipeline(newPipelineRequest);
			return ResponseEntity.ok().build();
		}
		catch (final GithubException | JenkinsException | PipelineException e) {

			logger.error("postPipeline ({}) :: PipelineException: {}", newPipelineRequest, e.getMessage(), e);
			return ResponseEntity.badRequest().build();
		}
	}

}
