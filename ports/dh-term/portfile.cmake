vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO dholmes215/dh-term
  REF v0.0.2
  SHA512 7da6cbf214b6825c29a6f7761c9f5653253e65c832b5da0d1f8a969f58a20910074c0f41d3c5decfdeb965231299d38e49d0d53d7cab8cfd20622cefc1fae8aa
  HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)


vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE_1_0.txt"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
