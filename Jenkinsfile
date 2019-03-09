pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                input message: '1 Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/ttt.sh'
            }
        }
        stage('Test') {
            steps {
                input message: '2 Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/test.sh'
                input message: '3 Finished using the web site? (Click "Proceed" to continue)'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
