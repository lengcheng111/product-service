# Getting Started

### clone from git: https://github.com/lengcheng111/product-service.git
# build image service
```sh
$ cd product-service
$ mvn 
$ <sudo> docker build -t product-service .
```
# run docker
```sh
$<sudo> docker run product-service -d -p 9090:8181
```
# Dockerfile
```sh
FROM openjdk:11-jre-slim

WORKDIR .

ADD /target/product-service-0.0.1-SNAPSHOT.jar product-service.jar

EXPOSE 8181

ENTRYPOINT ["java","-jar","product-service.jar"]
```
# Issue spring and java 11:
1. as jdk.java.net saying: "no longer recommended for use in production", so we should have a plan to use other version
2. we have a small problem with image size of 11, we are working around any solution to increase size of the image 
	- propose solution from oracle:  https://docs.oracle.com/javase/9/tools/jlink.htm#JSWOR-GUID-CECAC52B-CFEE-46CB-8166-F17A8E9280E9
