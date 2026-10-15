
pipeline {
    agent any

    options {
        timestamps()
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'docker build -t jenkins-cicd-demo:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing the application image...'
                sh 'docker image inspect jenkins-cicd-demo:latest'
                echo 'Build verification passed!'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh 'docker rm -f jenkins-cicd-demo || true'
                sh 'docker run -d --name jenkins-cicd-demo -p 8082:80 jenkins-cicd-demo:latest'
                sh 'sleep 3'
                sh 'docker exec jenkins-cicd-demo nginx -t'
                echo 'Deployment verification passed!'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD pipeline failed. Check the console output.'
        }
    }
}
