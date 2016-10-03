FROM openjdk:8-jre-alpine
COPY ./build/libs/app.jar /app.jar
EXPOSE 8881
ENTRYPOINT ["java", "-jar", "/app.jar"]
