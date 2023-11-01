pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = 'us-east-1' //
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        stage('EKS Configuration') {
            steps {
                // Here you can configure your EKS cluster, such as setting up kubectl and configuring authentication
                // Example: sh 'aws eks --region us-west-2 update-kubeconfig --name my-eks-cluster'
            }
        }

        stage('Deploy App') {
            steps {
                // Deploy your application to the EKS cluster
                // Example: sh 'kubectl apply -f my-app.yaml'
            }
        }

        stage('Terraform Destroy') {
            steps {
                // If needed, you can add a step to destroy the EKS cluster when it's no longer needed
                // Example: sh 'terraform destroy -auto-approve'
            }
        }
    }

    post {
        success {
            // Add any post-build actions you may need
        }
    }
}
