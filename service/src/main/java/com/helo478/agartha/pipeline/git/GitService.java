package com.helo478.agartha.pipeline.git;

import java.io.File;
import java.io.IOException;

import org.eclipse.jgit.api.AddCommand;
import org.eclipse.jgit.api.CommitCommand;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.api.PushCommand;
import org.eclipse.jgit.api.errors.GitAPIException;
import org.jboss.logging.Logger;
import org.springframework.stereotype.Service;

@Service
public class GitService {
	
	private static final Logger logger = Logger.getLogger(GitService.class);

	private static final String GITHUB_REPOSITORY_ROOT = "https://github.com";

	public void cloneRepository(final String workingDirectory, final String githubUser, final String repositoryName) throws GitException {

		final String githubRepositoryUrl = String.format("%s/%s/%s", GITHUB_REPOSITORY_ROOT, githubUser, repositoryName);

		try {

			File projectDirectoryFile = new File(String.format("%s/%s", workingDirectory, repositoryName));

			Git.cloneRepository().setDirectory(projectDirectoryFile).setURI(githubRepositoryUrl).call();
		}
		catch (final GitAPIException e) {

			throw new GitException(e);
		}
	}

	public void commitAndPush(final String workingDirectory, final String repositoryName, final JgitCredentialsProvider credentialsProvider) throws GitException {
		
		final File workingDirectoryFile = new File(String.format("%s/%s", workingDirectory, repositoryName));
		
		try {

			final Git git = Git.open(workingDirectoryFile);
			
			final AddCommand addCommand = git.add();
			addCommand.addFilepattern(".");
			addCommand.call();
			
			CommitCommand commitCommand = git.commit();
			commitCommand.setMessage("initial commit");
			commitCommand.call();
			
			PushCommand pushCommand = git.push();
			pushCommand.setRemote("origin");
			pushCommand.setCredentialsProvider(credentialsProvider.getJgitCredentials());
			pushCommand.call();
		}
		catch (final IOException | GitAPIException e) {
			
			logger.error("commitAndPush :: git add :: IOException | GitAPIException: {}", e.getMessage(), e);
			
			throw new GitException(e);
		}
	}

}
