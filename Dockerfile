FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
           /usr/local/tomcat/webapps/ROOT.war

# Copy your app as ROOT
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# (Optional) if you use setenv.sh
COPY setenv.sh /usr/local/tomcat/bin/setenv.sh
RUN chmod +x /usr/local/tomcat/bin/setenv.sh
