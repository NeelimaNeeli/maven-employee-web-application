pipeline {
  agent any
  stages {
    stage ('build') {
      steps {
        sh '/opt/maven/bin/mvn clean install'
      }
    }
   stage ('image building') {
     sh 'docker build -t emp:1 .'
     sh 'docker login -u neelima640 -p Peacock@2127'
     sh 'docker tag emp:1 neelima640/emp:1'
     sh 'docker push neelima640/emp1'
     }
  }
}
