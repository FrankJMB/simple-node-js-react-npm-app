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
                sh 'cd /root'
                sh 'pwd'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/ttt.sh'
            }
        }
    }
}
