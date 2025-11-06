#!/bin/bash


cd /tmp/boost
./bootstrap.sh --with-libraries=python --with-python=$(which python)
./b2 cxxflags="-fPIC" link=shared runtime-link=shared -j4 --reconfigure install
