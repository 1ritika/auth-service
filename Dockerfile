FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 2000
ADD target/*.jar auth-service-777.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /auth-service-777.jar" ]