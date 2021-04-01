set(INDIGO_FIND_REQUIRED ON)

set(INDIGO_DIR "${THIRD_PARTY_DIR}/indigo")
set(INDIGO_INCLUDE_DIR "${INDIGO_DIR}")
set(INDIGO_LIBS_RELEASE_DIR "${INDIGO_DIR}/libs_release/Linux/x64")

include_directories(${INDIGO_INCLUDE_DIR})
file(GLOB INDIGO_LIBS_RELEASE "${INDIGO_LIBS_RELEASE_DIR}/*${CMAKE_SHARED_LIBRARY_SUFFIX}")

foreach(lib ${INDIGO_LIBS_RELEASE})
    set(Indigo_LIBRARIES ${Indigo_LIBRARIES} optimized ${lib})
endforeach()

# To avoid problem with library order we specify them twice or even more
set(Indigo_LIBRARIES ${Indigo_LIBRARIES} ${Indigo_LIBRARIES} ${Indigo_LIBRARIES})