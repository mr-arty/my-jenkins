#!/bin/bash
/opt/sonarqube/bin/linux-x86-64/sonar.sh start
echo "Please wait about 30 seconds for server to start."
sleep 30s

echo "Starting Jenkins in a Docker container..."
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v jenkins-data:/var/jenkins_home -p 8080:8080 -p 50000:50000 -u jenkins:998 --network='host' \
 --privileged my-jenkins
