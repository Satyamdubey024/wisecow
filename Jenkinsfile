pipeline {
    agent any

    environment {
        IMAGE = "satyamdubey024/new_sh_wisecow:latest"
    }

    triggers {
        githubPush()   // \u2705 This enables auto-trigger on git push
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    credentialsId: 'github-creds',
                    url: 'https://github.com/Satyamdubey024/wisecow.git'
            }
        }



        stage('Build Docker Image') {
    steps {
        sh 'docker build -t satyamdubey024/new_sh_wisecow:latest .'
    }
}




stage('Docker Build & Push') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh """
                echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                docker push satyamdubey024/new_sh_wisecow:latest
            """
        }
    }
}



    
    }
}
