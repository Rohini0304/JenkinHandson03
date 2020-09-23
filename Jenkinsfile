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

    }
}
