FROM eclipse-temurin:17-jre
WORKDIR /app
# Copy the JAR from the workspace (Assuming Jenkins builds it)
COPY target/sample-app-1.0.0.jar app.jar
# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
