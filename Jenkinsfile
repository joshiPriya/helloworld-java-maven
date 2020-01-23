node {
 stage('Git checkout'){
	git 'https://github.com/joshiPriya/helloworld-java-maven.git'
}

stage('compile-package')
{
    sh "mvn deploy"

}

}
