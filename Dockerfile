FROM tomcat:9.0-jdk11

COPY target/comp367-webapp.war /usr/local/tomcat/webapps/comp367-webapp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
