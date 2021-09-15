node {
    def image 

    stage("Clone") {
        checkout scm
    }
    stage("Build image") {
        
        sh 'sudo su'
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
