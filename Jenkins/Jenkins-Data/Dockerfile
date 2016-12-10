#Build: docker build -t windows-jenkins:2.35 .
#Run: docker run --name jenkinsci -p 8080:8080 -p 50000:50000 -d windows-jenkins:2.35
FROM windows-jre:1.8.0.91

RUN mkdir \jenkins
ADD something.txt c:\\jenkins

VOLUME C:\\jenkins

CMD echo "Data container for Jenkins"
