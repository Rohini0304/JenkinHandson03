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
      
      stage("Deploy"){
              steps{
                bat '''copy C:\\Windows\\System32\\config\\systemprofile\\AppData\\Local\\Jenkins.jenkins\\workspace\\Deployment\\target\\HelloWorld03.war C:\\Program Files\\apache-tomcat-8.5.58\\webapps\\'''
            }
        }

    }
}
