FROM adoptopenjdk/openjdk11:aarch64-ubuntu-jdk-11.0.11_9-slim
ARG JAR_FILE=target/emc-0.0.1-SNAPSHOT.jar
WORKDIR /opr/app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
