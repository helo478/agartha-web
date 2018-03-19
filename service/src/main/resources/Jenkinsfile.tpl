#!groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                    echo 'Building...'
                    mvn -f service/pom.xml compile
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                            echo 'Testing...'
                    ls -l
                    mvn -f service/pom.xml test
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                            echo 'Deploying...'
                    ls -l
                    mvn -f service/pom.xml package
                '''
            }
        }
    }
}