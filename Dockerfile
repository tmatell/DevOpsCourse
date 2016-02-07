FROM centos:latest
MAINTAINER compas
RUN yum -y install mc
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
RUN yum -y install tomcat
ENV NAME=compas
RUN mkdir /logs
COPY *.war /usr/share/tomcat/webapps/

