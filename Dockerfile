# Use a base image with Java and Alpine Linux
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/spring-boot-app-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that the application will run on for test !!  
EXPOSE 8082

# Specify the command to run on container start
CMD ["java", "-jar", "app.jar"]
