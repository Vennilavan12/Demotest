pipeline {
    agent {
        label 'agent'
    }   
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('nginx')
                }
            }
        }        
        stage('Test') {
            agent {
                label 'agent'
            }
            steps {
                script {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }    
            }
        }
    }
}
