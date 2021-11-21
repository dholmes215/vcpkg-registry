vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO dholmes215/dh-term
  REF 9259d2a9ea8b2dd4f661ff7862a14c925fcf41c8
  SHA512 d8c9c2d51894b4dd132e38774e1ea85f5c1ecba9eb450b7a01992ed72d35c5f41739b789c38a330628d0df3a01cf1f6763419d2e2fe51e5c864a90e269027143
  HEAD_REF main
)

# vcpkg_configure_cmake(
#   SOURCE_PATH "${SOURCE_PATH}"
#   PREFER_NINJA
# )
vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)


# vcpkg_install_cmake()
vcpkg_cmake_install()
# vcpkg_fixup_cmake_targets()
vcpkg_cmake_config_fixup()
# vcpkg_cmake_config_fixup(CONFIG_PATH share/dh-term)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE_1_0.txt"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
