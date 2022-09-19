cmake_minimum_required (VERSION 3.23)

add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")



set(CMAKE_CXX_STANDARD 20)

find_package(OpenGL REQUIRED)
find_package(SDL2 CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)

add_executable (cppcodes "cppcodes.cpp" "cppcodes.h" "strings.cpp" )

target_link_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/INCREMENTAL>)
target_compile_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/ZI>)


target_link_libraries(cppcodes PRIVATE imgui::imgui)
target_link_libraries(cppcodes PRIVATE glfw)
target_link_libraries(cppcodes PRIVATE ${OPENGL_LIBRARY})
# target_link_libraries(cppcodes PRIVATE SDL2::SDL2 SDL2::SDL2main SDL2::SDL2-static)
target_link_libraries(cppcodes PRIVATE SDL2::SDL2 SDL2::SDL2main)
