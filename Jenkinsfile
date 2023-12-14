pipeline {
    agent agent

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
