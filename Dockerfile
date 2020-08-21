FROM openjdk:alpine
WORKDIR /tmp
COPY target/*.jar app.jar
#COPY ./deployemnt.yaml /tmp/deployemnt.yaml
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]