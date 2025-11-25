vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO dholmes215/dh-term
  REF v0.0.3
  SHA512 2f89accbe71f6be4af6676e7f65ee8d0c75072370e98833611b750c4b3b6bf959e55ad05e0ec658326d861bb2c5f58c986b4782a7a248b6a093f5c97f5db3406
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
