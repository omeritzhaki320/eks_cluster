pipeline {
    agent any
    parameters {
        choice(name: 'TerraformAction', choices: 'Apply\nDestroy', description: 'Choose Terraform action')
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Apply') {
            when {
                expression { params.TerraformAction == 'Apply' }
            }
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        stage('Terraform Destroy') {
            when {
                expression { params.TerraformAction == 'Destroy' }
            }
            steps {
                script {
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
