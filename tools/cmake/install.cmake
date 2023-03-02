set(CPACK_PACKAGE_NAME ${DragonCompute_LIB_NAME})
set(CPACK_PACKAGE_VENDOR "KhrySystem")
set(CPACK_PACKAGE_VERSION_MAJOR ${DragonCompute_SOURCE_DIR})
set(CPACK_PACKAGE_VERSION_MINOR ${DragonCompute_SOURCE_DIR})
set(CPACK_PACKAGE_VERSION_PATCH ${DragonCompute_SOURCE_DIR})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "code-first C++ Vulkan 3D game engine")
#set(CPACK_PACKAGE_FILE_NAME )
set(CPACK_PACKAGE_ICON ${DragonCompute_SOURCE_DIR}/tools/res/logo_64.png)
set(CPACK_RESOURCE_FILE_LICENSE ${DragonCompute_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${DragonCompute_SOURCE_DIR}/README.md)
set(CPACK_OUTPUT_CONFIG_FILE DragonComputeCPackConfig.cmake)
set(CPACK_THREADS 0)

include(CMakePackageConfigHelpers)
configure_package_config_file(${DragonCompute_SOURCE_DIR}/tools/cmake/DragonComputeConfig.cmake.in ${DragonCompute_BINARY_DIR}/DragonComputeConfig.cmake
	INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/DragonCompute
)
write_basic_package_version_file(${DragonCompute_BINARY_DIR}/DragonComputeConfigVersion.cmake VERSION ${DragonCompute_VERSION} COMPATIBILITY SameMajorVersion)

install(TARGETS ${DragonCompute_LIB_NAME}
	EXPORT DragonComputeExport
	ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

install(EXPORT DragonComputeExport
	FILE DragonComputeTargets.cmake
	DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/DragonCompute
)

install(DIRECTORY ${DragonCompute_SOURCE_DIR}/include/dragon DESTINATION ${CMAKE_INSTALL_INCLUDEDIR} FILES_MATCHING PATTERN "*.h" PATTERN "*.hpp")
install(FILES ${DragonCompute_BINARY_DIR}/DragonComputeConfig.cmake ${DragonCompute_BINARY_DIR}/DragonComputeConfigVersion.cmake DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/DragonCompute)

include(CPack)