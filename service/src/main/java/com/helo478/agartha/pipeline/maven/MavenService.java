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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class MavenService {

	@Value("${MAVEN_DIRECTORY_REPOSITORY_LOCAL}")
	private String localRepositoryDirectory;

	public void initializeProjectWithMavenArchetype(final String workingDirectory, final String javaPackage,
			final String repositoryName) throws MavenException {
		
		// TODO: validate naming conventions

		try {

			File workingDirectoryFile = new File(workingDirectory);

			final List<String> goals = new ArrayList<>();
			goals.add(String.format(
					"archetype:generate -DgroupId=%s -DartifactId=%s -DarchetypeGroupId=com.peak15.agartha -DarchetypeArtifactId=agartha-maven-archetype -DinteractiveMode=false",
					javaPackage, repositoryName));

			InvocationRequest invokationRequest = new DefaultInvocationRequest();
			invokationRequest.setGoals(goals);

			Invoker invoker = new DefaultInvoker();
			Map<String, String> env = System.getenv();
			String mavenHome = env.get("MAVEN_HOME");
			invoker.setMavenHome(new File(mavenHome));
			invoker.setLocalRepositoryDirectory(new File(localRepositoryDirectory));
			invoker.setWorkingDirectory(workingDirectoryFile);
			invoker.execute(invokationRequest);

		}
		catch (MavenInvocationException e) {

			throw new MavenException(e);
		}
	}

}
