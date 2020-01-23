node {
 stage('Git checkout'){
	git 'https://github.com/joshiPriya/helloworld-java-maven.git'
}

stage('compile-package')
{
 def mvnhome = tool name: 'maven3', type: 'maven'	
 sh "${mvnhome}/bin/mvn clean install"

}

}
