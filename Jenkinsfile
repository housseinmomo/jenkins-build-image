// node {
//     def app 

//     stage("Clone") {
//         sh 'rm -rf'
//         checkout scm
//     }
    
//     stage("Docker Permissions") {
       
//                 sh "chmod 666 /var/run/docker.sock"
            
//         }
    
//     stage("Build image") {
  
// //         sh 'systemctl start docker'
// //         sh 'systemctl enable docker'
// //         sh 'systemctl restart docker'
// //         sh 'sudo service docker start'
           
// //         sh 'sudo -su'
//            User root
//            sh 'sudo service docker start'
// //           sh 'docker -version'
//            sh 'docker ps'
// //         sh 'ls'
//        app = docker.build('wano:1.0')
//     }
//     stage("Run image") {
//         docker.image("wano/nginx").withRun('-p 80:80') {
//             c -> 
//                 sh 'docker ps'
//                 sh 'curl localhost'
//         }
//     }
// }

pipeline {
    agent {
        docker {
            image 'ubuntu'
            args '-u root:Sudo -v $HOME/workspace/myproject:/myproject'
        }
    }
    stages {
        stage("setup_env") {
            steps {
                sh 'apt-get update -y'
                sh 'apt-get install -y git build-essential gcc cmake make'
            }
        }

        stage("install_dependencies") {
            steps {
                sh 'apt-get install -y libxml2-dev'
            }
        }
        stage("compile_dpi") {
            steps {
                sh 'cd /myproject && make clean && make -j4'
            }
        }

        stage("install_dpi") {
            steps {
                sh 'cd /myproject && make install'
            }
        }

      
    }
//     post {
//         success {
//             echo 'Do something when it is successful'
//             bitbucketStatusNotify(buildState: 'SUCCESSFUL')
//         }
//         failure {
//             echo 'Do something when it is failed'
//             bitbucketStatusNotify(buildState: 'FAILED')
//         }
//     }
}


