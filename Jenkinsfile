pipeline {
  agent any
  environment {
        KUBECONFIG_CREDENTIALS = credentials('kubeconfig-employee')
        KUBE_SERVER_URL = 'https://127.0.0.1:6443'
    }
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
                withKubeConfig([credentialsId: KUBECONFIG_CREDENTIALS, serverUrl: KUBE_SERVER_URL]) {
                  sh 'kubectl create deploy employee3 --image=neelima640/emp:2'
                 
                }
            }
        }
  }
}
