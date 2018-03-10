#!groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
			echo 'BuildingX..'
			ls -l
			mvn -f service/pom.xml compile
		'''
            }
        }
        stage('Test') {
            steps {
		sh '''
                	echo 'TestingX..'
			ls -l
			mvn -f service/pom.xml test
		'''
            }
        }
        stage('Deploy') {
            steps {
		sh '''
                	echo 'DeployingX....'
			ls -l
			mvn -f service/pom.xml package
		'''
            }
        }
    }
}
