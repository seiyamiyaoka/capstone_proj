pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "hello world"'
      }
    }
    stage('HTML lint') {
      steps {
        sh 'tidy -q -e html/*.html'
      }
    }
    stage('Dockerfile lint') {
      steps {
        sh 'hadolint Dockerfile'
      }
    }
    stage('docker build') {
      steps {
        sh 'make build_nginx'
      }
    }
    stage('docker tag') {
      steps {
        sh 'make add_tag'
      }
    }
    stage('push ecr') {
      steps {
        docker.withRegistry("381271138029.dkr.ecr.us-west-2.amazonaws.com", "ecr:us-west-2:cap_proj") {
          docker.image("cap_nginx:v1").push()
        }
      }
    }
  }
}