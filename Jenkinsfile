node {
 stage('Git checkout'){
	git 'https://github.com/joshiPriya/helloworld-java-maven.git'
}
stage('SonarQube Analysis') {
  def mvnHome =  tool name: 'maven3', type: 'maven'
  withSonarQubeEnv('sonar') { 
  sh "${mvnHome}/bin/mvn sonar:sonar"
        }
    }
stage('compile-package')
{
 def mvnhome = tool name: 'maven3', type: 'maven'	
 sh "${mvnhome}/bin/mvn deploy"
}
}
