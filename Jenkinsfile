pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building the application...'
        bat 'docker build -t hello-world-app .'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing the application...'
        bat 'npm test'  // assuming there's a simple test script that checks the homepage
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying the application (locally)...'
        bat 'docker run -d -p 8080:8080 hello-world-app'
      }
    }
  }
}