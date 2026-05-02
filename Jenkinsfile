pipeline {
 agent any
  tools {
  maven 'maven'
}
   stages {
     stage ( 'checkoutcode') {
       steps {
           git credentialsId: 'github-pat', url: 'https://github.com/NikhilAandD/helloworld.git'
  }
}
    stage ( 'maven build' ) {
       steps {
       sh "mvn clean install"
}
 }
   stage ( 'codequalityanalysis' ) {
       steps {
       sh "mvn sonar:sonar"
}
}
     stage ( 'nexus artifactory upload' ) {
       steps {
       sh "mvn deploy"
}
}
}
}
