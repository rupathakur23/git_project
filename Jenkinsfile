pipeline {
    agent any
     tools {
        terraform 'terraform'
    }

    stages {
        stage('code_checkout') {
            steps {
                git branch : 'prod', url:'https://github.com/rupathakur23/git_project.git'
            }
        }
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
     post {
        success {
            echo "EC2 Created Successfully "
        }
        failure {
            echo "Terraform Failed "
            
        }
    }
}
