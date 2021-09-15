node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("xavki/nginx")
    }

    stage('Run image') {
        docker.image('mugen/nginx').withRun('-p 80:80') { c ->

        sh 'docker ps'

        sh 'curl localhost'

    }

    }
   
}
