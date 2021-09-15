node {
    def image 

    stage("Clone") {
        sh 'rm -rf'
        checkout scm
    }
    stage("Build image") {
  
        sh 'systemctl start docker'
        sh 'systemctl enable docker'
        sh 'systemctl restart docker'
        
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
