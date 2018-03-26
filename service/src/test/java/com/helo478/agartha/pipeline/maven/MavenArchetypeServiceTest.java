package com.helo478.agartha.pipeline.maven;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.maven.shared.invoker.DefaultInvocationRequest;
import org.apache.maven.shared.invoker.DefaultInvoker;
import org.apache.maven.shared.invoker.InvocationRequest;
import org.apache.maven.shared.invoker.Invoker;
import org.apache.maven.shared.invoker.MavenInvocationException;
import org.junit.Test;

public class MavenArchetypeServiceTest {

	@Test
	public void triggerGeneration() throws MavenInvocationException {

		final List<String> goals = new ArrayList<>();
		goals.add("archetype:generate -DgroupId=com.peak15.foo -DartifactId=Foo -DarchetypeGroupId=com.peak15.agartha -DarchetypeArtifactId=agartha-maven-archetype -DinteractiveMode=false");

		InvocationRequest invokationRequest = new DefaultInvocationRequest();
		invokationRequest.setGoals(goals);
		
		Invoker invoker = new DefaultInvoker();
		Map<String, String> env = System.getenv();
		String mavenHome = env.get("MAVEN_HOME");
		invoker.setMavenHome(new File(mavenHome));
		invoker.setLocalRepositoryDirectory(new File("C:\\Users\\Don\\.m2\\repository"));
		invoker.setWorkingDirectory(new File("C:\\tmp\\maven"));
		invoker.execute(invokationRequest);
	}

}
