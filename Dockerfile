#comment1
FROM openjdk:11-jdk
WORKDIR /app
# This is the problematic line: Expecting a .war file when the build actually produces a .jar file
COPY target/spring-boot-starter-parent-2.7.3.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
