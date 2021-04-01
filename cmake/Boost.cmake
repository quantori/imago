#Common settings
set(Boost_ADDITIONAL_VERSIONS "1.49" "1.49.0")
set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)
set(Boost_FIND_REQUIRED ON)

set(Boost_INCLUDE_DIR "${THIRD_PARTY_DIR}/boost")
find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIR})