FROM alpine:latest

RUN apk update && apk add procps git python3 build-base debootstrap ninja-build pkgconf wget debian-archive-keyring glib libfdt pixman-dev zlib-dev samurai powershell bash curl apache-ant xvfb

RUN wget https://compiler-ci-bucket.oss-cn-hangzhou.aliyuncs.com/tools/ant-contrib-1.0b3-bin.tar.bz2 -O ant-contrib-1.0b3-bin.tar.bz2 && tar xf ant-contrib-1.0b3-bin.tar.bz2 && mv ant-contrib/ant-contrib-1.0b3.jar /usr/share/java/apache-ant/lib/ant-contrib.jar && rm -rf ant-contrib*

RUN ln -sf /usr/bin/pwsh /usr/bin/powershell

RUN /bin/bash
