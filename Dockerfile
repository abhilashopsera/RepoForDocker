FROM openjdk:11-jdk
WORKDIR /app
# This is the problematic line: Expecting a .war file when the build actually produces a .jar file
COPY target/sample-app-1.0.0.war /app/app.war
CMD ["java", "-jar", "/app/app.war"]
