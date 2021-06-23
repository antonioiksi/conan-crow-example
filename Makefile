all: release

clear:
	rm -rf ~/.conan/data

release:
	rm -rf build && mkdir build && cd build &&\
	conan install .. --build=missing --profile ../conan-profiles/aarch64 &&\
	# conan install -s build_type=Release .. --build=missing -pr=aarch64 &&\
	# cmake .. -DCMAKE_CXX_FLAGS='-D_GLIBCXX_USE_CXX11_ABI=0' -DCMAKE_BUILD_TYPE=Debug &&\
	cmake .. -DCMAKE_BUILD_TYPE=Release &&\
	cmake --build . --config Release;