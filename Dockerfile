FROM openjdk:16-jdk-alpine
RUN apk add git
RUN git clone https://github.com/davidxit/POC_SpringBoot.git
RUN apk add maven
RUN apk add vim
WORKDIR /POC_SpringBoot
RUN mvn package
EXPOSE 8080
WORKDIR /POC_SpringBoot/target
CMD java -jar application-0.0.1-SNAPSHOT.jar