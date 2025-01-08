pipeline {
    agent any

    stages {
stage('Clone Repository') {
            steps {
                git 'https://github.com/vishwa-45/nerdshub.git'
            }
        }

        stage('Build') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo Deploying...'
            }
        }
    }
}
