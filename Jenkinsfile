pipeline {
  agent any
  stages {
    state('Build') {
      steps {
        sh 'echo "hello world"'
      }
    }
    stage('HTML lint') {
      steps {
        sh 'tidy -q -e /html/*.html'
      }
    }
  }
}