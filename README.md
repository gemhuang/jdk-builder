# JDK Builder

OpenJDK version: jdk8u

## prepare JDK


取得 OpenJDK 專案

```
hg clone https://hg.openjdk.java.net/jdk8u/jdk8u/
```

取回其他 source code

```
cd jdk8u
bash get_source.sh
```

## prepare Docker


取得建置用 Docker

```
docker pull gemhuang/jdk-builder:jdk8u-stretch
```

執行 container 裡的執行腳本

```
docker run -v $(pwd):/app gemhuang/jdk-builder:jdk8u-stretch /bin/bash /build-jdk.sh
```
