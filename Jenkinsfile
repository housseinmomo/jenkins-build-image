node {
    def image 

    stage("Clone") {
        checkout scm
    }
    stage("Build image") {
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
