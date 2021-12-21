#!/usr/bin/env groovy

pipeline {
    agent any
    tools {
        nodejs 'node12'
    }
    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Docker build and deploy') {
            steps {
                sh 'docker build -t curd:dev .'
                sh 'docker images'
                sh ' docker run -d curd:dev'
                sh ' docker ps -a'
                
            }
        }
    }
    post {
        always {
            echo 'One way or another, I have finished'
            deleteDir() /* clean up our workspace */
        }
        success {
            echo 'I succeeeded!'
        }
        unstable {
            echo 'I am unstable :/'
        }
        failure {
            echo 'I failed :('
        }
        changed {
            echo 'Things were different before...'
        }
    }
}
