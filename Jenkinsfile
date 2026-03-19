pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        JAVA_HOME = 'C:\\Program Files\\Eclipse Adoptium\\jdk-17.0.18.8-hotspot'
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials')
        DOCKER_IMAGE = 'dlee216/comp367-webapp'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Docker Login') {
            steps {
                bat "docker login -u %DOCKER_HUB_CREDENTIALS_USR% -p %DOCKER_HUB_CREDENTIALS_PSW%"
            }
        }
        stage('Docker Build') {
            steps {
                bat "docker build -t %DOCKER_IMAGE%:latest ."
            }
        }
        stage('Docker Push') {
            steps {
                bat "docker push %DOCKER_IMAGE%:latest"
            }
        }
    }
}
