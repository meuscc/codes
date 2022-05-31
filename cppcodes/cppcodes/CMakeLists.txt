cmake_minimum_required (VERSION 3.22)

set(CMAKE_CXX_STANDARD 23)

add_executable (cppcodes "cppcodes.cpp" "cppcodes.h" "strings.ixx")

set_property(TARGET cppcodes PROPERTY CXX_STANDARD 23)