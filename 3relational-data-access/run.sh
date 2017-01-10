#!/bin/bash
# file run.sh
docker run --rm -e GRADLE_USER_HOME=cache -v $(pwd):/app -w /app frekele/gradle:3.3-jdk8 wrapper
docker run --rm -e GRADLE_USER_HOME=cache -v $(pwd):/app -w /app frekele/gradle:3.3-jdk8 ./gradlew build
docker run --rm -v $(pwd):/app openjdk:8 java -jar /app/build/libs/gs-relational-data-access-0.1.0.jar