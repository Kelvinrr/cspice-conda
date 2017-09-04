#!/bin/bash
mkdir build
cd build

cmake ..
make

echo $PREFIX

if [[ `uname` == 'Linux' ]]; then
    mkdir -p $PREFIX/lib
    cp ../lib/libcspice.a $PREFIX/lib/libcspice.a
else
   ditto ../lib/libcspice.a $PREFIX/lib/
fi

exit
