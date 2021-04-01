find_package(Threads REQUIRED)

set(IMAGO_C_FLAGS "")

add_definitions("${IMAGO_C_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS_INIT})
set(CMAKE_SHARED_LINKER_FLAGS ${CMAKE_SHARED_LINKER_FLAGS_INIT})
set(LINK_FLAGS "${LINK_FLAGS}")

if(NOT LIBS_LOCATION)
	message(FATAL_ERROR "Please set LIBS_LOCATION variable")
endif()
set(THIRD_PARTY_DIR ${CMAKE_SOURCE_DIR}/third_party)

include(Boost)
include(OpenCV)
include(Indigo)

set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP TRUE)
include(InstallRequiredSystemLibraries)
