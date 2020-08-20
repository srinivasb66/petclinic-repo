FROM openjdk:alpine
WORKDIR /tmp
COPY target/*.jar app.jar
COPY ./deployemnt.yaml /tmp/deployemnt.yaml
EXPOSE 8080
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin
ENTRYPOINT ["java","-jar","app.jar"]