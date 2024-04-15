FROM tomcat:9-jdk11-corretto
COPY target/*.war /usr/local/tomcat/webapps
