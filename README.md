docker-java-hipster
===================

Hipster Java development environment built with docker

Building
--------

```
sudo docker build -t <username>/hipster-java .
```

Running
-------

```
sudo docker run -h java-dev -i -t <username>/hipster-java
```

Example projects
----------------

Spring boot light

```
cd examples/spring-boot-simple && spring run SampleController.java
```

Spring boot complere

```
cd examples/spring-boot-complete
gradle build
java -jar build/libs/spring-boot-complete.jar
```
