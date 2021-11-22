vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO dholmes215/dh-term
  REF efc5b096db6e02b253723e843b2934618a4453c1
  SHA512 cea70c367cd35a25e39726bf743f6c67017a2b74bf9342534d72f1be6faea421ee018b9bdca7a1f7a532cc3f86708725fefc6e8dff25e116751aaf85cd94455d
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
