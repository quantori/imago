cmake_policy(VERSION 2.8.6)
project(ImagoC)

include_directories(${ImagoLib_SOURCE_DIR}/src)

include_directories(${Boost_INCLUDE_DIR})
include_directories(${INDIGO_INCLUDE_DIR})
include_directories(${OpenCV_INCLUDE_DIR})

message(STATUS "Imago version is ${IMAGO_VERSION} (${IMAGO_VERSION_EXT})")
configure_file(src/imago_version.h.in ${CMAKE_CURRENT_SOURCE_DIR}/src/imago_version.h)

file(GLOB SRC src/*.cpp)
file(GLOB HEADERS src/*.h)
list(APPEND SRC ${HEADERS})

# Static library
add_library(imago_c_static STATIC ${SRC})
target_link_libraries(imago_c_static imago)

set_target_properties(imago_c_static PROPERTIES
		OUTPUT_NAME imago_c
		ARCHIVE_OUTPUT_DIRECTORY imago_static)

install(TARGETS imago_c_static EXPORT imago DESTINATION static/${SUBSYSTEM_PATH} COMPONENT static)
install(FILES src/imago_c.h DESTINATION . RENAME imago.h COMPONENT static)
IF(MSVC)
	INSTALL (FILES ${PROJECT_BINARY_DIR}/Debug/imago_c.pdb DESTINATION static/${SUBSYSTEM_PATH} COMPONENT static CONFIGURATIONS Debug)
ENDIF(MSVC)

add_executable(indigo_compare_molecules test/indigo_compare_molecules.c)
target_link_libraries(indigo_compare_molecules ${Indigo_LIBRARIES})