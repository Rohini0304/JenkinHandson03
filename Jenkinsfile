pipeline {
    agent any
    tools {
       maven 'maven'
           }
    stages {
        stage("maven_version") {
            steps {
                bat "mvn --version"
            }
        }

     stage("clean and package") {
            steps {
                bat "mvn clean package"
            }
        }
     stage("deploy"){
             steps{
                bat "docker build --tag=webappsample ."
                bat "docker tag webappsample rohini0304/docker03:websample"
                bat "docker login -u 'rohini0304' -p 'Docker@123' docker.io"
                bat "docker push rohini0304/docker03:websample"
                   }
            }
  }   
}
