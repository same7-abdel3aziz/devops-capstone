pipeline {

  environment {
    registry = 'same7abdel3aziz/udacity'
    registryCredential = 'dockerhub'
    dockerImage = ''
    tag = '0.1'
    semicolon = ':'
  }

  agent any

  stages{

    stage('Lint HTML') {
      steps {
        sh 'tidy -q -e app/*.html'
      }
    }



  }

}
