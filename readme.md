# Info

Suitable with Gradle project

Suitable with java 1.8

# Instructions

Build project:

```
./gradlew build
```

Alternatively try to run app:

```
java -jar build/libs/gs-spring-boot-docker-0.1.0.jar
```

Build docker image:

```
docker build -t springio .
```

Run docker container:

```
docker run -d -p 8080:8080 springio
```

See logs:

```
docker logs <container_id>
```
