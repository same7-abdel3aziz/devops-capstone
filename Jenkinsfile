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

    stage('Building Docker Image') {
      steps {
          // sh 'docker image rm same7abdel3aziz/udacity:0.1'
          // sh 'docker build -t same7abdel3aziz/udacity:0.1 .'
          // sh '$ docker system prune --all'
          
          script {
            dockerImage = docker.build registry + semicolon + tag
          }
          sh 'docker image ls -a'
        }
    }

    stage('Push Docker Image to Docker Hub') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$tag"
      }
    }

    stage('Deploy kubenetes'){
	    steps{
        sh "kubectl apply -f ./kubernetes"
	    }
    } 

  }

}
