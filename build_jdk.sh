#!/bin/bash

cd /app

bash configure \
    --with-x=/usr/ \
    --with-freetype-include=/usr/include/freetype2/ \
    --with-freetype-lib=/usr/lib/x86_64-linux-gnu/ \
    --with-num-cores=4 \
    --with-memory-size=2048 \
    --with-vendor-name=gembuild \
    --with-milestone=release \
    --with-jvm-variants=server \
    --with-jvm-interpreter=template \
    --with-jdk-variant=normal \
    --with-target-bits=64 \
    --enable-ccache \
    --enable-debug \
    --enable-unlimited-crypto \
    --enable-sjavac \
    --enable-hotspot-test-in-build

make images
