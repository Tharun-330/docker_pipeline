# Use the official Tomcat image as the base image
FROM tomcat:latest

# Remove the default Tomcat application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the webapp.war file to the Tomcat webapps directory
COPY */webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]