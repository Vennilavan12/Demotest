pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-2'
        registry = '006095271778.dkr.ecr.us-east-2.amazonaws.com/dev'
    }

    stages {
        stage('Building image') {
          steps{
            script {
              dockerImage = docker.build registry 
            }
          }
        }
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Authenticate with ECR
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS']]) {
                        sh "aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${ECR_REPO_URL}"
                         sh 'docker push 006095271778.dkr.ecr.us-east-2.amazonaws.com/dev:latest'
                    }

        

                }
            }
        }
    }
}
