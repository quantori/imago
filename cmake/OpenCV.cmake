set(OpenCV_INCLUDE_DIR "usr/local/include")

FIND_PACKAGE(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIR})