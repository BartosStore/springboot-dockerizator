# Info
# suitable with Gradle project
# suitable with java 1.8

# Instructions
# ./gradlew build
# (alternatively try to run with) java -jar build/libs/gs-spring-boot-docker-0.1.0.jar
# docker build -t springio .
# docker run -d -p 8080:8080 springio
# docker logs <container_id>

FROM openjdk:8-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-jar", "/app.jar" ]
