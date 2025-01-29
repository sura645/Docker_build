# Use the official Tomcat base image
FROM tomcat:9.0

# Set environment variables
ENV WAR_FILE simple-war.war
ENV DEPLOY_DIR /usr/local/tomcat/webapps/

# Copy the WAR file to the Tomcat webapps directory
COPY target/${WAR_FILE} ${DEPLOY_DIR}

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
