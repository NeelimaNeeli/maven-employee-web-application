pipeline {
  agent any
  stages {
    stage ('git clone') {
      steps {
        sh 'git clone https://github.com/NeelimaNeeli/maven-employee-web-application.git'
      }
    }
    stage ('build') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}
