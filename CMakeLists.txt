option(DragonCompute_INSTALL "Create the Dragon install targets" ON)

add_library(dgcompute-${DragonEngine_VERSION_MAJOR} 
	src/engine.cpp
)

target_include_directories(dgcompute-${DragonEngine_VERSION_MAJOR} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(dgcompute-${DragonEngine_VERSION_MAJOR} PUBLIC Dragon::Core)

add_library(Dragon::Compute ALIAS dgcompute-${DragonEngine_VERSION_MAJOR})

if(DragonCompute_INSTALL)
	#include(tools/cmake/install.cmake)
endif()