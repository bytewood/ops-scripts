FROM openjdk:8-jre-alpine
COPY ./build/libs/app.jar /app.jar
COPY ./ops-scripts/waitfor.sh /waitfor.sh
RUN chmod 755 /waitfor.sh
EXPOSE 8881
ENTRYPOINT ["java", "-jar", "/app.jar"]
