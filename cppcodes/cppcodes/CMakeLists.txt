cmake_minimum_required(VERSION 3.23)

# visual studio UTF8 编码
if (WIN32 OR MSVC OR MSYS OR MINGW)
    add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
    add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
endif ()

set(CMAKE_CXX_STANDARD 23)

find_package(OpenGL REQUIRED)
find_package(SDL2 CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)

add_executable(cppcodes "cppcodes.cpp" "cppcodes.h" "strings.cpp")

# visual studio 热更新
if (WIN32 OR MSVC OR MSYS OR MINGW)
    target_link_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/INCREMENTAL>)
    target_compile_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/ZI>)
endif ()

target_link_libraries(cppcodes PRIVATE imgui::imgui)
target_link_libraries(cppcodes PRIVATE glfw)
target_link_libraries(cppcodes PRIVATE ${OPENGL_LIBRARY})

target_link_libraries(cppcodes PRIVATE SDL2::SDL2 SDL2::SDL2main)