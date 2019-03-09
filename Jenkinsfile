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
                sh './jenkins/scripts/ttt.sh'
            }
        }
        stage('Deliver') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
