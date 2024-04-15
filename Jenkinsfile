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
   stage ('Creating Docker Container') {
     steps {
       sh 'docker run -d -p 9923:8080 --name=employee1 neelima640/emp:2'
     }
   }
  }
}
