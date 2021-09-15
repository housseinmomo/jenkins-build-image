node {
    def app 

    stage("Clone") {
        sh 'rm -rf'
        checkout scm
    }
    
    stage("Docker Permissions") {
       
                sh "sudo chmod 666 /var/run/docker.sock"
            
        }
    
    stage("Build image") {
  
//         sh 'systemctl start docker'
//         sh 'systemctl enable docker'
//         sh 'systemctl restart docker'
//         sh 'sudo service docker start'
           
//         sh 'sudo -su'
           User root
           sh 'sudo service docker start'
//           sh 'docker -version'
           sh 'docker ps'
//         sh 'ls'
       app = docker.build('wano:1.0')
    }
    stage("Run image") {
        docker.image("wano/nginx").withRun('-p 80:80') {
            c -> 
                sh 'docker ps'
                sh 'curl localhost'
        }
    }
}
