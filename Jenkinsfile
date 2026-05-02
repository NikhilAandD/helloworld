node{
    def mavenHome = tool name: 'maven'
    stage ('code checkout')
            {
                git credentialsId: 'github-pat', url: 'https://github.com/NikhilAandD/helloworld.git'
            }
    stage ( 'maven build' )
       sh "$mavenHome/bin/mvn clean install"
    stage ( 'codequalityanalysis' )
       sh "$mavenHome/bin/mvn sonar:sonar"
    stage ( 'nexus artifactory upload' )
       sh "$mavenHome/bin/mvn deploy"   
}
