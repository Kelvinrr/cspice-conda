#!/bin/bash
mkdir build
cd build

cmake ..
make

echo $PREFIX

if [[ "$unamestr" == 'Linux' ]]; then
   cp -P ../lib/libcspice.a $PREFIX/lib/
else
   ditto ../lib/libcspice.a $PREFIX/lib/
fi

exit
