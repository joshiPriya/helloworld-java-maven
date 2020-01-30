FROM java:8
EXPOSE 9095
ADD target/hellow-world-docker-maven.jar 	hellow-world-docker-maven.jar
ENTRYPOINT ["java","hellow-world-docker-maven.jar"]
