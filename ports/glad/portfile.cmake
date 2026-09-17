vcpkg_cmake_configure(
    SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}"
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
