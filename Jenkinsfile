node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        sh 'sudo -s'
        docker.build("mugen/nginx")
    }

    stage('Run image') {
        docker.image('mugen/nginx').withRun('-p 80:80') { c ->

        sh 'docker ps'
         
        sh 'curl localhost'  
          
        echo 'Build success'

    }

    }
   
}
