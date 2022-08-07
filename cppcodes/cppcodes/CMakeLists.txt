cmake_minimum_required (VERSION 3.22)

set(CMAKE_CXX_STANDARD 23)

find_path(UWEBSOCKETS_INCLUDE_DIRS "uwebsockets/App.h")
find_package(fmt CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)


add_executable (cppcodes "cppcodes.cpp" "cppcodes.h" "strings.ixx")

target_include_directories(cppcodes PRIVATE ${UWEBSOCKETS_INCLUDE_DIRS})
target_link_libraries(cppcodes PRIVATE fmt::fmt)
target_link_libraries(cppcodes PRIVATE imgui::imgui)



set_property(TARGET cppcodes PROPERTY CXX_STANDARD 20)