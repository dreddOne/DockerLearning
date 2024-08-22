FROM openjdk:17-jdk-alpine

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENV SPRING_PROFILES_ACTIVE=studies
ENV SERVER_PORT=8080

EXPOSE ${SERVER_PORT}

ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=${SPRING_PROFILES_ACTIVE}", "--server.port=${SERVER_PORT}"]