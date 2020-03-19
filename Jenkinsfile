node {
  stage 'Checkout'
  git 'https://github.com/Ruman1996/ecr-dockerfile.git'
 
  stage 'Docker build'
  docker.build('639380775516.dkr.ecr.us-east-1.amazonaws.com/ruman-test')
 
  stage 'Docker push'
  docker.withRegistry('https://639380775516.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:docker-user-ecr') {
    //docker.image('639380775516.dkr.ecr.us-east-1.amazonaws.com/ruman-test').push('${BUILD_NUMBER}')
    docker.image('639380775516.dkr.ecr.us-east-1.amazonaws.com/ruman-test').push('')
  }
}
