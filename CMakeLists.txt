cmake_minimum_required(VERSION 3.7)

set(CMAKE_C_COMPILER "/usr/bin/aarch64-linux-gnu-gcc-7")
set(CMAKE_CXX_COMPILER "/usr/bin/aarch64-linux-gnu-g++-7")

project(crow_macos)

set(CMAKE_CXX_STANDARD 11)

if (EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup()
else ()
    message(WARNING "The file conanbuildinfo.cmake doesn't exist, you have to run conan install first")
endif ()

add_executable(crow_macos src/main.cpp)
target_link_libraries(crow_macos ${CONAN_LIBS})
