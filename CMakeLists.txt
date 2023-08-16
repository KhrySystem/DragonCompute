# CMakeList.txt : CMake project for DragonCompute, include source and define
# project specific logic here.

project(DragonCompute VERSION ${DragonEngine_VERSION})

if(NOT TARGET Dragon::Core)
	find_package(DragonCore REQUIRED)
endif()

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 20)

set(DragonCompute_LIB_NAME dgcompute-${DragonCompute_VERSION_MAJOR})

option(DragonCompute_INSTALL "Create the Dragon install targets" ON)

add_library(${DragonCompute_LIB_NAME} STATIC 
	src/engine_close.cpp
	src/engine_init.cpp
 	src/engine_runtime.cpp
)

target_include_directories(${DragonCompute_LIB_NAME} PRIVATE ${Dragon_INCLUDE_DIR} ${DragonCompute_SOURCE_DIR}/include)
target_link_libraries(${DragonCompute_LIB_NAME} PUBLIC Dragon::Core)

add_library(Dragon::Compute ALIAS ${DragonCompute_LIB_NAME})

if(DragonCompute_INSTALL)
	#include(tools/cmake/install.cmake)
endif()