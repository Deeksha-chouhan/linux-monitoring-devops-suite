pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Monitoring') {
            steps {
                sh 'chmod +x scripts/*.sh'
                sh 'bash scripts/run_all.sh'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'reports/*', allowEmptyArchive: true
            archiveArtifacts artifacts: 'backups/*', allowEmptyArchive: true
        }
    }
}
