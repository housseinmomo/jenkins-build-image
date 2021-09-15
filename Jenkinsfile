node {
    def image 

    stage("Clone") {
        sh 'rm -rf'
        checkout scm
    }
    stage("Build image") {
  
        sh 'sudo systemctl start docker'
        sh 'sudo systemctl enable docker'
        sh 'sudo systemctl restart docker'
        
        image = docker.build('wano/nginx')
    }
    stage("Run image") {
        docker.image("wano/nginx").withRun('-p 80:80') {
            c -> 
                sh 'docker ps'
                sh 'curl localhost'
        }
    }
}
