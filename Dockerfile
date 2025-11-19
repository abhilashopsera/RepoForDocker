FROM openjdk:21-jdk
WORKDIR /app
COPY target/spring-boot-docker.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
#TEST3
#TEST4
#test5
