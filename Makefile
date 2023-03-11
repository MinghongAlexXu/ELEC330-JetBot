.DEFAULT_GOAL := build

init:
	cmake -D CMAKE_C_COMPILER=gcc-11 -D CMAKE_CXX_COMPILER=g++-11 -S . -B build -G Ninja

build: init
	NINJA_STATUS="[%p/%f/%t %e] " cmake --build build -j 2

install: build
	cmake --install build
