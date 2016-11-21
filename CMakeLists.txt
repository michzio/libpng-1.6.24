cmake_minimum_required(VERSION 3.6)
project(libpng_1_6_24)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c99")
set(SOURCE_FILES png.h png.c pngconf.h pnglibconf.h pngdebug.h pngerror.c pngget.c pnginfo.h pngmem.c pngpread.c pngpriv.h pngread.c pngrio.c pngrtran.c pngrutil.c pngset.c pngstruct.h pngtest.c pngtrans.c pngwio.c pngwrite.c pngwtran.c pngwutil.c)
# libraries paths
set(ZLIB_PATH /Users/michzio/Developer/MyProjects/BachelorDegree/c/zlib-1.2.8)

add_library(libpng_Lib SHARED ${SOURCE_FILES})
set_target_properties(libpng_Lib PROPERTIES OUTPUT_NAME libpng_shared)
target_link_libraries(libpng_Lib ${ZLIB_PATH}/libzlib.a)

add_library(libpng_Lib_Static ${SOURCE_FILES})
set_target_properties(libpng_Lib_Static PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_Lib_Static ${ZLIB_PATH}/libzlib.a)

add_executable(libpng_1_6_24 main.c)
target_link_libraries(libpng_1_6_24 libpng_Lib_Static)