FROM jenkins/jenkins
# if we want to install via dpkg
USER root

RUN cd /home && wget https://download.docker.com/linux/debian/dists/stretch/pool/stable/amd64/docker-ce-cli_18.09.6~3-0~debian-stretch_amd64.deb && dpkg -i docker-ce-cli_18.09.6~3-0~debian-stretch_amd64.deb
RUN groupadd docker && usermod -a -G docker jenkins

# drop back to the regular jenkins user - good practice
USER jenkins
