package com.helo478.agartha.pipeline.github;

import org.springframework.util.StringUtils;

import com.fasterxml.jackson.annotation.JsonProperty;

public class NewRepositoryModel {

	@JsonProperty("name")
    private String name;
    
    @JsonProperty("auto_init")
    private final boolean autoInit = true;
    
    @JsonProperty("private")
    private final boolean isPrivate = false;
    
    @JsonProperty("gitignore_template")
    private final String gitignoreTemplate = "nanoc";
    
    public static NewRepositoryModel of(final String name) {
    	
    	if (StringUtils.isEmpty(name)) {
    		
    		throw new IllegalArgumentException("null given in");
    	}
    	
    	return new NewRepositoryModel(name);
    }	
    
    private NewRepositoryModel(final String name) {
    	
    	this.name = name;
    }

	public String getName() {
		return name;
	}

	public boolean isAuto_init() {
		return autoInit;
	}

	public boolean isPrivate() {
		return isPrivate;
	}

	public String getGitignore_template() {
		return gitignoreTemplate;
	}

}
