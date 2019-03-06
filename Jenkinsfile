pipeline {
    agent {
        docker {
            image 'node:10-alpine'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm cache clean -f'
                sh 'npm cache verify'
                sh 'node -v'
                sh 'npm -v'
                sh 'pwd'
                sh 'whoami'
            }
        }
    }
}
