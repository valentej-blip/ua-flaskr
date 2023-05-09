# docker build -f jenkinsdind.Dockerfile -t local-jenkins .
# docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -p 8081:8080 local-jenkins

FROM jenkins/jenkins:lts-jdk11

USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common python3-pip
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update -qq \
    && apt-get -y install docker-ce
RUN usermod -aG docker jenkins
RUN jenkins-plugin-cli --plugins docker-java-api docker-workflow
