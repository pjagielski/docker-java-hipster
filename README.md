docker-java-hipster
===================

Hipster Java development environment built with [docker](http://docker.io) and powered by [gvm](http://gvmtool.net/).

Featured:
- [gradle](http://www.gradle.org/)
- [spring-boot](http://projects.spring.io/spring-boot/)
- [vert.x](http://vertx.io/)
- [leiningen](http://leiningen.org/)
- [lazybones](https://github.com/pledbrook/lazybones)

Building image
--------------

```bash
docker build -t <username>/hipster-java .
```

Running container
-----------------

```bash
sudo docker run -p 8088:8080 -i -t -v `pwd`/examples:/home/hipster/examples <username>/hipster-java
```

Running example projects
----------------

Just run commands below in a container and then visit [http://localhost:8088](http://localhost:8088) on your host machine for working samples. `examples` dir is hosted from outside the container so restarting container won't erase your changes

**Spring boot light**

```bash
cd examples/spring-boot-simple && spring run SampleController.java
```

**Spring boot complete**

```bash
cd examples/spring-boot-complete
gradle build
java -jar build/libs/spring-boot-complete.jar
```

**Vert.x**
```bash
cd examples/vertx && vertx run ServerExample.java
```

**Clojure - compojure**
```bash
cd examples/compojure-simple && lein ring server-headless 8080
```
