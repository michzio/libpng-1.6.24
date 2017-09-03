cmake_minimum_required(VERSION 3.6)
project(libpng_1_6_24)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c99")
set(SOURCE_FILES include/png.h src/png.c include/pngconf.h include/pnglibconf.h include/pngdebug.h src/pngerror.c src/pngget.c include/pnginfo.h src/pngmem.c src/pngpread.c include/pngpriv.h src/pngread.c src/pngrio.c src/pngrtran.c src/pngrutil.c src/pngset.c include/pngstruct.h src/pngtest.c src/pngtrans.c src/pngwio.c src/pngwrite.c src/pngwtran.c src/pngwutil.c src/arm/arm_init.c src/arm/filter_neon.S src/arm/filter_neon_intrinsics.c)
# set(TEST_SOURCE_FILES ...)

file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs)
if(CYGWIN)
    # windows cygwin
    message("building for Cygwin")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/cygwin)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/cygwin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/bin/cygwin)
elseif(APPLE)
    # apple
    message("building for Apple")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/apple)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/apple)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/bin/apple)
else()
    # unix
    message("building for Unix")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/unix)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/lib/unix)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/outputs/bin/unix)
endif()

### MAKING LIBRARIES ###
# include current project headers
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# subprojects paths
set(ZLIB_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../zlib-1.2.8)
set(ZLIB_BUILD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../zlib-1.2.8/outputs)

# add subprojects
add_subdirectory( # Specifies the directory of the CMakeLists.txt file.
                  ${ZLIB_SRC_DIR}
                  # Specifies the directory for the build outputs.
                  ${ZLIB_BUILD_DIR} )

# include header files of subproject
include_directories(${ZLIB_SRC_DIR}/include )

# current project shared and static libraries creation
# SHARED
add_library(libpng_Lib SHARED ${SOURCE_FILES})
set_target_properties(libpng_Lib PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_Lib zlib_Lib)

# STATIC
add_library(libpng_Lib_Static ${SOURCE_FILES})
set_target_properties(libpng_Lib_Static PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_Lib_Static zlib_Lib_Static)

### MAKING EXECUTABLE ###
# current project executable creation
add_executable(libpng_1_6_24 src/main.c)
set_target_properties(libpng_1_6_24 PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_1_6_24 libpng_Lib)