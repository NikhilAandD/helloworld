FROM openjdk:21-jdk
MAINTAINER vijay
WORKDIR /home
COPY target/helloworld-1.92.jar /home/app.jar
CMD ["java", "-jar", "app.jar"]
