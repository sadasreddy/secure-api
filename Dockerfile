FROM openjdk:17

COPY build/libs/secure-api-*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]