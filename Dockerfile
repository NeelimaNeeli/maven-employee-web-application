FROM tomcat:9.0.88-jre21
COPY target/*.war /usr/local/tomcat/webapps
