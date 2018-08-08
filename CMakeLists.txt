cmake_minimum_required(VERSION 2.8)
project(helloworld)

add_executable(helloworld hello.cpp)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/modules/)
include(FindLIBWEBSOCKETS)

find_package (LIBWEBSOCKETS REQUIRED)

if (LIBWEBSOCKETS_FOUND)
  include_directories(${LIBWEBSOCKETS_INCLUDE_DIRS})
  target_link_libraries (helloworld ${LIBWEBSOCKETS_LIBRARIES})
endif (LIBWEBSOCKETS_FOUND)
