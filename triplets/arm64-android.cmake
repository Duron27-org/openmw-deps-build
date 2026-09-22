set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CMAKE_SYSTEM_NAME Android)

if(DEFINED ENV{VCPKG_ANDROID_API})
    set(VCPKG_CMAKE_SYSTEM_VERSION $ENV{VCPKG_ANDROID_API})
else()
    set(VCPKG_CMAKE_SYSTEM_VERSION 28)
endif()

# ANGLE requires specific handling
if(${PORT} MATCHES "openal|sdl2|collada|glad|angle")
    set(VCPKG_CRT_LINKAGE dynamic)
    set(VCPKG_LIBRARY_LINKAGE dynamic)
    set(VCPKG_CMAKE_CONFIGURE_OPTIONS ${COMMON_CMAKE_ARGS})
else()
    set(VCPKG_CRT_LINKAGE static)
    set(VCPKG_LIBRARY_LINKAGE static)
    set(VCPKG_CMAKE_CONFIGURE_OPTIONS ${COMMON_CMAKE_ARGS})
endif()

set(VCPKG_MAKE_BUILD_TRIPLET "--host=aarch64-linux-android")
set(VCPKG_BUILD_TYPE release)
