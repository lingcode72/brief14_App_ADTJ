pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('py_slim')
    }

    stages {
        stage('Check out the Git repository') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lingcode72/brief14_App_ADTJ']]])
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('py_slim')
                }
            }
        }

        stage('Docker Tag') {
            steps {
                script {
                    sh 'docker tag py_slim ling69/py_slim'
                }
            }
        }

        stage('Login') {
            steps {
                script {
                    sh 'docker login -u ling69 -p dckr_pat_EQPoqTNrIv7Hb3nFr4Pg5_yVxOs'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    sh 'docker push ling69/py_slim'
                }
            }
        }

        stage("Parameter Setup") {
            steps {
                script {
                    properties([
                        parameters([
                            choice(choices: ['apply', 'destroy'], name: 'ACTION')
                        ])
                    ])
                }
            }
        }

        stage('Terraform Init (Staging)') {
            steps {
                script { 
                    sh 'cd stagingEnvironment && terraform init'
                   
                }
            }
        }

        stage('Terraform Plan (Staging)') {
            steps {
                script {
                     sh 'cd stagingEnvironment && terraform plan'
                }
            }
        }

        stage('Terraform Apply (Staging)') {
            steps {
                script {
                    sh 'cd stagingEnvironment && terraform apply -auto-approve'
                }
            }
        }

        stage('Terraform init (Production)') {
            steps {
                script {
                    sh 'cd proEnvironment && terraform init'
                }
            }
        }

        stage('Terraform plan (Production)') {
            steps {
                script {
                    sh 'cd proEnvironment && terraform plan'
                }
            }
        }

        stage('Terraform Apply (Production)') {
            steps {
                script {
                    sh 'cd proEnvironment && terraform apply -auto-approve'
                }
            }
        }    
    }
}

