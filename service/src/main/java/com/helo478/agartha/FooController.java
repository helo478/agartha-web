package com.helo478.agartha;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/foo")
public class FooController {
	
	@Autowired
	private RestTemplate restTemplate;

	@PostMapping
	public ResponseEntity<Void> postFoo(final @RequestBody Foo foo) {
		
		System.out.println("Received Foo: " + foo);
		
		final ResponseEntity<String> response = restTemplate.getForEntity("http://localhost:5000", String.class, new Object[] { });
		
		System.out.println("response: " + response.getBody());
		
		return ResponseEntity.accepted().build();
	}
	
}
