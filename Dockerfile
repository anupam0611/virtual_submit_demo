FROM centos

MAINTAINER anupam.agarwal@nagarro.com

RUN yum -y update && yum install -y curl 

FROM tomcat
RUN rm -rf /usr/local/tomcat/webapps/* 
ADD maven-web-application.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
