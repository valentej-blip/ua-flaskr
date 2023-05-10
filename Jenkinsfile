pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'pip3 install ./flaskr'
            }
        }
        stage('Test') {
            steps {
                sh 'pip3 install pytest && pytest ./flaskr'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t local-flaskr ./flaskr'
                sh './deploy.sh'
            }
        }
    }
}
