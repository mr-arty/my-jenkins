pipeline {
    agent any

	tools {
		jdk "default-jdk"
		maven "default-maven"
	}

    stages {
        stage('Clone sources'){
            steps {
                git url: 'https://github.com/Anusha-DevOp/web_ex'
            }
        }
    
    
        stage('SonarQube analysis') {
	        steps {
		    //Prepare SonarQube scanner enviornment
		    withSonarQubeEnv('default-sonarqube') {
		        sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar'
		}
	  }
     }
    }
}
