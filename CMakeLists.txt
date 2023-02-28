# CMakeList.txt : CMake project for DragonCompute, include source and define
# project specific logic here.
#
cmake_minimum_required(VERSION 3.24)

project(DragonCompute VERSION 1.0)

find_package(Dragon REQUIRED)

set(DragonCompute_LIB_NAME dgcompute-${DragonCompute_VERSION_MAJOR})

add_library(${DragonCompute_LIB_NAME} STATIC 
	${DragonCompute_SOURCE_DIR}/src/engine_close.cpp
	${DragonCompute_SOURCE_DIR}/src/engine_init.cpp
)

target_include_directories(${DragonCompute_LIB_NAME} PUBLIC ${Dragon_INCLUDE_DIR} ${DragonCompute_SOURCE_DIR}/include)
target_link_libraries(${DragonCompute_LIB_NAME} PUBLIC Dragon::Dragon)