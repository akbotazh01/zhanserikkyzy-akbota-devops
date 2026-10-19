pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Akbota'
        STUDENT_SURNAME = 'Zhanserikkyzy'
        STUDENT_GROUP = 'IT2-2308'
        STUDENT_ID = '37106'
        IMAGE_NAME = 'zhanserikkyzy-akbota-devops'
        CONTAINER_NAME = 'zhanserikkyzy-akbota-container'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code is checked out from GitHub.'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the student application.'
                sh 'test -f app/app.sh'
                sh 'test -f Dockerfile'
                sh 'test -f docker-compose.yml'
                sh 'test -f tests/test_app.sh'
                sh 'echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"'
                sh 'echo "Group: ${STUDENT_GROUP}"'
                sh 'echo "Student ID: ${STUDENT_ID}"'
            }
        }

        stage('Test') {
            steps {
                sh 'sh -n app/app.sh'
                sh 'sh -n tests/test_app.sh'
                sh 'echo "Shell syntax checks passed."'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

                    docker run -d \
                      -e STUDENT_NAME="$STUDENT_NAME" \
                      -e STUDENT_SURNAME="$STUDENT_SURNAME" \
                      -e STUDENT_GROUP="$STUDENT_GROUP" \
                      -e STUDENT_ID="$STUDENT_ID" \
                      --name "$CONTAINER_NAME" \
                      "$IMAGE_NAME"

                    docker logs "$CONTAINER_NAME"

                    docker stop "$CONTAINER_NAME"
                    docker rm "$CONTAINER_NAME"
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'DevOps Pipeline completed successfully.'
        }
    }
}
