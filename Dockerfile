FROM tomcat:9.0-jdk17

COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
COPY setenv.sh /usr/local/tomcat/bin/setenv.sh

RUN chmod +x /usr/local/tomcat/bin/setenv.sh
