#!/bin/bash

git clone https://github.com/BrunoRoman/spring-web-youtube.git

cd spring-web-youtube

mvn package -Dmaven.test.skip -DskipTests -Dmaven.javadoc.skip=true

tag=$(git describe --tags $(git rev-list --tags --max-count=1))

echo "Cria Dockerfile"

echo 'FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]' > Dockerfile

sudo docker build -t "727746/spring-web-youtube:$tag" -f Dockerfile .

sudo docker push projetofinal/spring-web-youtube:$tag

cd ..
rm -rf spring-web-youtube

