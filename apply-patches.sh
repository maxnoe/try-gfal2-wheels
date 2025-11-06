#!/bin/bash

cd gfal2
echo "Applying patches in gfal2"
patch -p1 --forward -r - < ../patches/gfal2/0001-Drop-CMakeCXX11Support.patch
patch -p1 --forward -r - < ../patches/gfal2/0002-cryptopp.patch

echo "Applying patches in gfal2-python"
cd ../gfal2-python/
patch -p1 --forward -r - < ../patches/gfal2-python/0001-Force-CMake-to-use-the-correct-Python.patch
