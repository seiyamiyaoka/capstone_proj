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
    stage ("lint dockerfile") {
      agent {
        docker {
            image 'hadolint/hadolint:latest-debian'
        }
      }
      steps {
        sh 'hadolint Dockerfile'
      }
    }
  }
}