#!/bin/bash
mkdir -p build-host-gcc-linux
pushd build-host-gcc-linux
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/host.gcc.toolchain.cmake \
	-DNCNN_SIMPLEOCV=ON \
	-DNCNN_BUILD_EXAMPLES=ON ..
make -j8
popd
