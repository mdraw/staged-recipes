#!/bin/sh

mkdir build
cd build
cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DDNNL_BUILD_EXAMPLES=OFF \
    -DDNNL_BUILD_TESTS=ON
make -j$CPU_COUNT
make install
