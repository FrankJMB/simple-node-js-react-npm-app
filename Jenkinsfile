pipeline {
    agent {
        docker {
            image 'node:11-alpine'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm -v'
                sh 'node -v'
                sh 'npx create-react-app my-app'
            }
        }
    }
}
