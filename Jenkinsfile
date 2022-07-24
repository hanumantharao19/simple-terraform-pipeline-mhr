pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    
    stages {
        stage('git checkout') {
            steps{
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/hanumantharao19/simple-terraform-pipeline-mhr.git'
            }
        }
    
        stage('terraform init') {
            steps{
                sh 'terraform init'
            }
        }
    
    
   
        stage('terraform plan') {
            steps{
                sh 'terraform plan'
            }
        }
        
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        
 }
}
