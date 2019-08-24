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
  }
}