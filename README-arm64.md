```sh
apt install build-essential
apt install libboost-all-dev libssl-dev

g++ -O3 -std=c++11 src/main.cpp -lboost_thread -lboost_system -pthread

aarch64-linux-gnu-g++ -o main-aarch64 -O3 -std=c++11 src/main.cpp -lboost_thread -lboost_system -pthread
```



```sh
pip install --upgrade b2

rm -rf build && mkdir build && cd build

conan install .. -s build_type=Release --build=missing -pr=default
cmake ..
cmake --build . --config Release

```

```sh
# FILE: root@b0623b3808fc:~/build# cat ~/.conan/profiles/default 
toolchain=aarch64-linux-gnu

[env]
CONAN_CMAKE_FIND_ROOT_PATH=/usr/$toolchain
CHOST=$toolchain
AR=$toolchain-ar
AS=$toolchain-as
RANLIB=$toolchain-ranlib
CC=$toolchain-gcc
CXX=$toolchain-g++
STRIP=$toolchain-strip
RC=$toolchain-windres
PKG_CONFIG_PATH=/usr/lib/$toolchain/pkgconfig

[settings]
os=Linux
os_build=Linux
arch=armv8
arch_build=x86_64
compiler=gcc
compiler.version=6.3
compiler.libcxx=libstdc++11
build_type=Release
```