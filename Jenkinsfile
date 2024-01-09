pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-2'
        ECR_REPO_URL = '006095271778.dkr.ecr.us-east-2.amazonaws.com/dev'
    }

    stages {
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Authenticate with ECR
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'AWS']]) {
                        sh "aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${ECR_REPO_URL}"
                    }

                    // Build and tag Docker image
                    sh "docker build -t ${DOCKER_IMAGE_NAME} -f ${DOCKERFILE_PATH} ."

                    // Tag the image with ECR repository URL
                    sh "docker tag ${DOCKER_IMAGE_NAME} ${ECR_REPO_URL}/${DOCKER_IMAGE_NAME}"

                    // Push the Docker image to ECR
                    sh "docker push ${ECR_REPO_URL}/${DOCKER_IMAGE_NAME}"
                }
            }
        }
    }
}
