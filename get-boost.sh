#!/bin/bash

BOOST_VERSION=1.89.0
BOOST_DIR=boost_${BOOST_VERSION//./_}

mkdir /tmp/boost
curl -sSfL  https://archives.boost.io/release/${BOOST_VERSION}/source/${BOOST_DIR}.tar.gz | tar xz --strip-components=1 -C /tmp/boost
