# Getting Started

### clone from git: link
# build image service
```sh
$ cd product-service
$ <sudo> docker build -t product-service .
```
# run docker
```sh
$<sudo> docker run product-service -d -p 9090:8080
```
### issue:
1. as jdk.java.net saying: "no longer recommended for use in production", so we should have a plan to use other version
2. we have a small problem with image size of 11, we are working around any solution to increase size of the image 
	- propose solution from oracle:  https://docs.oracle.com/javase/9/tools/jlink.htm#JSWOR-GUID-CECAC52B-CFEE-46CB-8166-F17A8E9280E9
