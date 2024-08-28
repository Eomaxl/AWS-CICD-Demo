#Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17
#Set working directory inside the container
WORKDIR /app
# Copy the compiled Java Application JAR file into the container
COPY ./target/course-service.jar /app
# Expose the port the Spring boot application will run on
EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "course-service.jar"]