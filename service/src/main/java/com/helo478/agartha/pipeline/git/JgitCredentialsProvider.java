package com.helo478.agartha.pipeline.git;

import org.eclipse.jgit.transport.CredentialsProvider;

public interface JgitCredentialsProvider {

	CredentialsProvider getJgitCredentials();

}
