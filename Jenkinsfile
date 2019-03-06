pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm -v'
                sh 'apk add --update nodejs nodejs-npm'
                sh 'npm -v'
            }
        }
    }
}
