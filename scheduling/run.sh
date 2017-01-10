#!/bin/bash
# file: run.sh
docker run --rm -e GRADLE_USER_HOME=cache -v $(pwd):/app -w /app frekele/gradle:3.3-jdk8 ./gradlew build
docker run --rm -v $(pwd):/app openjdk:8 java -jar /app/build/libs/gs-scheduling-tasks-0.1.0.jar