pipeline {
  agent any
  stages {
    stage ('build') {
      steps {
        sh '/opt/maven/bin/mvn clean install'
      }
    }
   stage ('image building') {
    steps {
     sh 'docker build -t emp:2 .'
     sh 'docker login -u neelima640 -p Peacock@2127'
     sh 'docker tag emp:2 neelima640/emp:2'
     sh 'docker push neelima640/emp:2'
       }
     }
   
  stage ('Creating Kubernetes Deployment') {
    steps {
      sh 'kubectl create deploy employee1 --image=neelima640/emp:2'
    }
   }
  }
}
