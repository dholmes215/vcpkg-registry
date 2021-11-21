vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO dholmes215/dh-term
  REF 0a6470171d2226a859d426af580fc4bcc44da18b
  SHA512 51774ac6913eb891746f7ec4fc4a7e6bca3cf6989740101d080df5b87fafff26320b9125a5c73cf06e5ae10e2bcd50950a6585677d7208dcf2c9de2ca2c22b6d
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
