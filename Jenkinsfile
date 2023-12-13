pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                script {
                    sh 'chmod +x script.sh'
                    sh './script.sh'
                }    
            }
        }
    }
}
