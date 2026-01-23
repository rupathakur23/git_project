pipeline {
    agent any
    stages {
        stage('terraform init') {
            steps {
                sh 'terraform init'
                echo "initialisation is done"

            }
        }
         stage('terraform plan') {
            steps {
                sh 'terraform plan'
                echo "plan is done"
            }
        }
          stage('terraform apply') {
            steps {
                sh 'terraform apply -auto-approve'
                echo "creation is done"
            }
        }
    }
}
