set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO fschoenberger/constexprhash
  REF 4309e0808e0a542dd16244ad30770b9f6a46e723
  SHA512 075855e8f55a2441c1795441089cf90ee2aedc6e691db728af26da4353f18221d7b2092256f358704a36b2f0c07bbb253a093585be2a9f7bdefecb4b2de29c21
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/constexprhash)

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/lib")