FROM  openjdk:11
VOLUME /tmp
ADD target/authApp-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container", "-jar","/app.jar"]