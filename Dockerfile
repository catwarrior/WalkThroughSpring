FROM maven:3
FROM openjdk:8
# docker run -ti --rm -v $(pwd):/app -w /app maven:3 mvn package && java -jar target/gs-s pring-boot-docker-0.0.jar
FROM frekele/gradle:3.3-jdk8
# docker run -ti --rm -v $(pwd):/app -w /app frekele/gradle:3.3-jdk8 ./gradlew build 
# docker run -ti --rm -v $(pwd):/app -w /app -p 8080:8080 openjdk:8 java -jar target/gs-spring-boot-docker-0.1.0.jar
# docker run --name gradle -ti --rm -e GRADLE_USER_HOME=cache -v $(pwd):/app -w /app frekele/gradle:3.3-jdk8 ./gradlew build
# docker run -ti --rm -v $(pwd):/app openjdk:8 java -jar /app/build/libs/gs-scheduling-tasks-0.1.0.jar