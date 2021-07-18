FROM openjdk:8-alpine

ENV SYSTEM_PROPS -Dfoo=bar

#COPY target/*.jar /
ADD target/*.jar //

ENTRYPOINT ["sh", "-c", "java ${SYSTEM_PROPS} -Djava.security.egd=file:/dev/./urandom -jar /*.jar"]