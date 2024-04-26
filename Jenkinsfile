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
     sh 'docker ps'
       }
     }
   
   stage('Creating k8s deployment') {
            steps {
                withKubeConfig([credentialsId:'kubeconfig']) {
                  
                  //sh 'kubectl delete deploy employee3 -n employee'
                  //sh 'kubectl delete svc emp-svc -n employee'
                  
                  sh 'kubectl create deploy employee3 --image=neelima640/emp:2 -n employee'
                  
                  sh 'kubectl expose deploy employee3 --name=emp-svc --type=NodePort --port=9966 --target-port=80 -n employee'
                  sh 'kubectl get svc -n employee'
                 
                }
            }
        }
  }
}
