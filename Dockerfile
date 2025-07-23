FROM tomcat:10.1-jdk17-temurin

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your war file
COPY target/sampleapp.war /usr/local/tomcat/webapps/sampleapp.war

EXPOSE 8080

ENV CATALINA_OPTS="-Djava.net.preferIPv4Stack=true -Dserver.address=0.0.0.0"

CMD ["catalina.sh", "run"]

