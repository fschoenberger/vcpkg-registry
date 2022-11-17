vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO fschoenberger/boost-pool
    REF e8b15c1c958722fa10489ac4f892576319233171
    SHA512 c7a25cad3f6c503ae741a25b96828e14116e2e141a76eac271a15ffafe03e94ff3eb979f70ac4e44a5e76bbf4cdbe57bc226b8c34bd596cdc90f951d53dcdecc
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)

boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})