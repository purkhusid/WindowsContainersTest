#Build: docker build -t windows-jenkins:2.35 .
#Run: docker run --name jenkinsci -p 8080:8080 -p 50000:50000 -d windows-jenkins:2.35
FROM windows-jre:1.8.0.91

ENV HOME /jenkins
ENV JENKINS_VERSION 2.35
RUN mkdir \jenkins
RUN powershell -Command "wget -Uri https://updates.jenkins-ci.org/download/war/2.35/jenkins.war -UseBasicParsing -OutFile \jenkins\jenkins.war"

EXPOSE 8080
EXPOSE 50000

CMD java -jar c:\jenkins\jenkins.war
