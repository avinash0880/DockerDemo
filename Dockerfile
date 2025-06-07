# Use a lightweight Java image
FROM openjdk:8
EXPOSE 8080

#ADD target/
# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/app.jar app.jar

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
