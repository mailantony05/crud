#!/usr/bin/env groovy

pipeline {
    agent any
    tools {
        nodejs 'node12'
    }
    stages {
        stage('Install') {
            steps {
                sh 'nodejs --version'
                sh 'npm install'
            }
        }
        stage('Docker') {
            steps {
                sh 'nodejs --version'
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
