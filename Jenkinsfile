pipeline {
  agent { sudo docker { image 'python:3.7.2' } }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'pytest'
      }
    }
    stage("deploy") {
        steps {
            sh "OKK"
        }
    }    
  }
}
