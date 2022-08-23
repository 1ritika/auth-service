FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 2000
ADD target/*.jar auth-service.jar
ENTRYPOINT [ "sh", "-c", "java -jar /auth-service.jar" ]
