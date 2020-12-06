pipeline {
  agent { docker { image 'python:3.7.2' } }
  stages {
    stage('Build') {
      steps {
        sh 'sudo pip install -r requirements.txt'
      }
    }
    stage('Test') {
      steps {
        sh 'pytest test_api.py'
      }
    }
    stage("Deploy") {
        steps {
            sh "OKK"
        }
    }    
  }
}
