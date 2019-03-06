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
                sh 'npm cache clean -f'
                sh 'npm install -g npm@latest'
                sh 'npm -v'
                sh 'npm install -g n@latest'
                sh 'npm install -g npx'
                sh 'npx create-react-app my-app'
            }
        }
    }
}
