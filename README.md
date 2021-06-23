# Conan Crow lib example

> Tested on Ubuntu 18
> gcc 7.5.0
> aarch64-linux-gnu-gcc-7 7.5



## Install requirements
```sh
pip3 install conan
apt install gcc-aarch64-linux-gnu # for cross compiling
apt install build-essential
```


## Compile
```sh
make release
```

```sh
rm -rf build && mkdir build && cd build
conan install .. --build=missing --profile ../conan-profiles/aarch64
# or
# conan install .. --build=missing -pr=aarch64
cmake ..
cmake --build . --config Release
```