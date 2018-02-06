FROM  tomcat:7.0
MAINTAINER mkazla9@gmail.com

RUN apt-get -y update && apt-get -y install python

ENV CATALINA_BASE /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_TMPDIR /usr/local/tomcat/temp
ENV JRE_HOME /usr
ENV CLASSPATH  /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar
ENV TOMCAT_USERNAME admin
ENV TOMCAT_PASSWORD 123456

WORKDIR ${CATALINA_HOME}

ADD ec2-dockerintegration.war ${CATALINA_HOME}/webapps/ec2-docker.war
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 9991:8080

CMD ["catalina.sh", "run"]
