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
                bat "deploy adapters: [tomcat8(credentialsId: '80aa8608-8d01-4248-9cb4-1e48210f66a2', path: '', url: 'http://localhost:9191')], contextPath: 'HelloWorld', war: 'HelloWorld03.war'"
            }
        }

    }
}
