node {
	stage('delet ws') {
		deleteDir()
		
	}
	
 stage('Git checkout'){
	git 'https://github.com/joshiPriya/helloworld-java-maven.git'
}

stage('compile-package')
{
 def mvnhome = tool name: 'maven3', type: 'maven'	
 sh "${mvnhome}/mvn clean"
}
	
	stage('SonarQube Analysis') {
  def mvnHome =  tool name: 'maven3', type: 'maven'
  withSonarQubeEnv('sonar') { 
  sh "${mvnHome}/bin/mvn sonar:sonar"
        }
    } 
stage('ssh'){
sshPublisher(publishers: [sshPublisherDesc(configName: 'docker-host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'cd /home/dockeradmin/docker;docker build -t myimage .', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//home//dockeradmin//docker', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: 'target/*.jar')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])

}	
	
}
