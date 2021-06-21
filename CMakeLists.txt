cmake_minimum_required(VERSION 3.7)
project(crow_macos)

set(CMAKE_CXX_STANDARD 14)

if (EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup()
else ()
    message(WARNING "The file conanbuildinfo.cmake doesn't exist, you have to run conan install first")
endif ()

add_executable(crow_macos src/main.cpp)
target_link_libraries(crow_macos ${CONAN_LIBS})
