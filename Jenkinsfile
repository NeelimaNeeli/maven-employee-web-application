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
   
   stage('Creating k8s deployment') {
            steps {
                withKubeConfig([credentialsId:'kubeconfig-emp', serverUrl:'https://127.0.0.1:6443']) {
                  sh 'kubectl create deploy employee3 --image=neelima640/emp:2'
                 
                }
            }
        }
  }
}
