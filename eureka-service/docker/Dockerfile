FROM openjdk:16-slim

COPY eureka-service-0.0.1-SNAPSHOT.jar .
CMD ["sh", "-c", "java -jar eureka-service-0.0.1-SNAPSHOT.jar --spring.profiles.active=${HOSTNAME}"]
