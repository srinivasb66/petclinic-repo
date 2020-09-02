FROM openjdk:alpine
WORKDIR /tmp
COPY ../../target/*.jar app.jar
#COPY ./deployemnt.yaml /tmp/deployemnt.yaml
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]


# FROM google/cloud-sdk:alpine
# RUN apk add kubectl
# RUN apk add docker \
#     apk add openrc \
#     rc-update add docker boot 
# CMD ["docker ps"]