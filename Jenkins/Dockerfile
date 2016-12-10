#Build: docker build -t windows-jenkins:2.35 .
#Run: docker run --name jenkinsci -p 8080:8080 -p 50000:50000 -d windows-jenkins:2.35
#Run with persistent data volume: docker run --name jenkinsci -v C:/JENKINS_HOME:C:/JENKINS_HOME -p 8080:8080 -p 50000:50000 -d windows-jenkins:2.35
FROM windows-jre:1.8.0.91

ENV JENKINS_HOME /JENKINS_HOME
ENV JENKINS_VERSION 2.35
RUN mkdir \jenkins
RUN mkdir \JENKINS_HOME
RUN powershell -Command "wget -Uri https://updates.jenkins-ci.org/download/war/2.35/jenkins.war -UseBasicParsing -OutFile \jenkins\jenkins.war"

RUN mkdir \GitInstaller
RUN powershell -Command "wget -Uri https://github.com/git-for-windows/git/releases/download/v2.11.0.windows.1/Git-2.11.0-64-bit.exe -UseBasicParsing -OutFile \GitInstaller\GitInstaller.exe"
RUN powershell -Command "Start-Process C:\GitInstaller\GitInstaller.exe -ArgumentList '/SILENT', '/COMPONENTS=\"icons,ext\reg\shellhere,assoc,assoc_sh\"' -Wait"

EXPOSE 8080
EXPOSE 50000

CMD java -jar c:\jenkins\jenkins.war
