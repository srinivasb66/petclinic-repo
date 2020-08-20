FROM openjdk:alpine
RUN apk --no-cache add --upgrade \
     python3 \
    py3-pip \
    curl \
    bash \
    alpine-sdk \
    linux-headers \
    build-base \
    libevent-dev \
    python3-dev
WORKDIR /tmp
COPY target/*.jar app.jar
#COPY ./deployemnt.yaml /tmp/deployemnt.yaml
EXPOSE 8080
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin
RUN pip3 install --upgrade pip
ENTRYPOINT ["java","-jar","app.jar"]