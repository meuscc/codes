cmake_minimum_required(VERSION 3.23)

# visual studio UTF8 编码
if (WIN32 OR MSVC OR MSYS OR MINGW)
    add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
    add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
endif ()

set(CMAKE_CXX_STANDARD 23)

find_path(UWEBSOCKETS_INCLUDE_DIRS "uwebsockets/App.h")
find_path(CPP_HTTPLIB_INCLUDE_DIRS "httplib.h")

find_package(nlohmann_json CONFIG REQUIRED)
find_package(OpenGL REQUIRED)
find_package(SDL2 CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)


add_executable(cppcodes "cppcodes.cpp" "cppcodes.h" "strings.ixx" "http.hpp" "ui.hpp")

# visual studio 热更新
if (WIN32 OR MSVC OR MSYS OR MINGW)
    target_link_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/INCREMENTAL>)
    target_compile_options(cppcodes PRIVATE $<$<CONFIG:Debug>:/ZI>)
endif ()

target_include_directories(cppcodes PRIVATE ${UWEBSOCKETS_INCLUDE_DIRS})
target_include_directories(cppcodes PRIVATE ${CPP_HTTPLIB_INCLUDE_DIRS})

target_link_libraries(cppcodes PRIVATE nlohmann_json::nlohmann_json)
target_link_libraries(cppcodes PRIVATE imgui::imgui)
target_link_libraries(cppcodes PRIVATE glfw)
target_link_libraries(cppcodes PRIVATE ${OPENGL_LIBRARY})
target_link_libraries(cppcodes PRIVATE SDL2::SDL2 SDL2::SDL2main)
