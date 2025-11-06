#!/bin/bash

cd gfal2

find . -name '*.h' -exec sed -i 's@#include <attr/xattr.h>@#include <sys/xattr.h>@g' {} \;
find . -name '*.c' -exec sed -i 's@#include <attr/xattr.h>@#include <sys/xattr.h>@g' {} \;

mkdir build
cd build

cmake \
    -DPLUGIN_LFC=OFF \
    -DPLUGIN_RFIO=OFF \
    -DLIB_SUFFIX="" \
    -DCMAKE_CXX_STANDARD=14 \
    ..

make -j${CPU_COUNT}
make install
