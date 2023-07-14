vcpkg_from_github(
  OUT_SOURCE_PATH
  SOURCE_PATH
  REPO
  piot/tiny-libc
  REF
  5d13d2f8d71d26fcc0fe9e1388d4beb40fda5779
  SHA512
  cf64521144ebaa508b42efba03d4fa89d3d5f9ce0677bb23c0de60f2110200b1eac184d1f3f557ca24110be977c75cf10e315f99586dc1dfe748f48a9731c9d1
  HEAD_REF
  main)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
# vcpkg_cmake_config_fixup()
# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
