pipeline {
  agent any
  stages {
    stage('HTML lint') {
      steps {
        sh 'tidy -q -e /html/*.html'
      }
    }
  }
}