cmake_minimum_required (VERSION 3.23)

add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")

project ("cppcodes")


add_subdirectory ("cppcodes")
