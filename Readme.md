## Simple proof-of-concept Jenkins CI + Sonarqube setup

This is a fairly simple setup which includes a Docker container running Jenkins CI, based on official Jenkins image from Docker Hub. Sonarqube server is installed locally on my machine and is accessed from inside the container.

Here's a brief description of what happens when we run Dockerfile.
- pull jenkins/jenkins image from Docker Hub
- switch to root user
- install Docker client from official website
- make Docker accessible from Jenkins by adding jenkins user to docker group
- switch user back to jenkins for normal operation

The script to launch both the Jenkins container and Sonarqube is start.sh

Jenkins configuration and Sonarqube setup are beyond the scope of this readme file. Some info on these topics can be found at <https://jenkins.io/doc/> and <https://docs.sonarqube.org/latest/setup/get-started-2-minutes/>

The code included in Jenkinsfile was partially borrowed from https://github.com/Anusha-DevOp/web_ex
