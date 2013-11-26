docker-java-hipster
===================

Hipster Java development environment built with docker

Featured:
- [gvm](http://gvmtool.net/)
- [gradle](http://www.gradle.org/)
- [spring-boot](http://projects.spring.io/spring-boot/)
- [vert.x](http://vertx.io/)

Building image
--------------

```
sudo docker build -t <username>/hipster-java .
```

Running container
-----------------

```
sudo docker run -h java-dev -i -t <username>/hipster-java
```

Example projects
----------------

*Spring boot light*

```
cd examples/spring-boot-simple && spring run SampleController.java
```

*Spring boot complete*

```
cd examples/spring-boot-complete
gradle build
java -jar build/libs/spring-boot-complete.jar
```
