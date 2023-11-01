pipeline {
      agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('YOUR_AWS_ACCESS_KEY_ID_CREDENTIAL_ID')
        AWS_SECRET_ACCESS_KEY = credentials('YOUR_AWS_SECRET_ACCESS_KEY_CREDENTIAL_ID')
        AWS_DEFAULT_REGION = 'us-west-2' // Update with your desired region
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
}
