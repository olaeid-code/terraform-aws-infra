pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/olaeid-code/terraform-aws-infra.git', branch: 'master'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform plan -var-file="dev.tfvars"'

            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: "Do you want to apply?"
                sh 'terraform apply -auto-approve'
            }
        }
    }
}


