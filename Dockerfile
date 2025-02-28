FROM openjdk:17-jdk
WORKDIR /app
COPY target/spring-boot-docker.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
