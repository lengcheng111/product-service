FROM openjdk:11-jre-slim

WORKDIR .

ADD /target/product-service-0.0.1-SNAPSHOT.jar product-service.jar

EXPOSE 8181

ENTRYPOINT ["java","-jar","product-service.jar"]