pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Vennilavan12/Demotest.git']])
            }
        }
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
