
FROM openjdk:11-slim
#RUN apk add --no-cache tzdata
ENV TZ America/Sao_Paulo
WORKDIR /opt
COPY target/*.jar /opt/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
