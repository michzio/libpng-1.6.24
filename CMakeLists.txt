cmake_minimum_required(VERSION 3.6)
project(libpng_1_6_24)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c99")
set(SOURCE_FILES png.h png.c pngconf.h pnglibconf.h pngdebug.h pngerror.c pngget.c pnginfo.h pngmem.c pngpread.c pngpriv.h pngread.c pngrio.c pngrtran.c pngrutil.c pngset.c pngstruct.h pngtest.c pngtrans.c pngwio.c pngwrite.c pngwtran.c pngwutil.c)

if(CYGWIN)
    # windows cygwin
    message("building for Cygwin")
else()
    # unix
    message("building for Unix")
endif()

# libraries paths
set(ZLIB_PATH ${CMAKE_SOURCE_DIR}/../zlib-1.2.8)
if(CYGWIN)
    # windows cygwin
    set(ZLIB_LIB_PATH ${ZLIB_PATH}/output/windows/lib/static/libzlib.a)
else()
    # unix
    set(ZLIB_LIB_PATH ${ZLIB_PATH}/output/unix/lib/static/libzlib.a)
endif()

add_library(libpng_Lib SHARED ${SOURCE_FILES})
set_target_properties(libpng_Lib PROPERTIES OUTPUT_NAME libpng_shared)
target_link_libraries(libpng_Lib ${ZLIB_LIB_PATH})

add_library(libpng_Lib_Static ${SOURCE_FILES})
set_target_properties(libpng_Lib_Static PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_Lib_Static ${ZLIB_LIB_PATH})

add_executable(libpng_1_6_24 main.c)
set_target_properties(libpng_1_6_24 PROPERTIES OUTPUT_NAME libpng)
target_link_libraries(libpng_1_6_24 libpng_Lib_Static)

# install targets (executables, shared libraries, static libraries) in current project source directory
add_custom_target(Intall_${PROJECT_NAME}
                  $(MAKE) install
                  DEPENDS ${PROJECT_NAME}
                  COMMENT "Installing ${PROJECT_NAME}")

if(CYGWIN)
    # windows cygwin
    set(RUNTIME_DEST_DIR ${CMAKE_SOURCE_DIR}/output/windows/bin)
    set(LIBRARY_DEST_DIR ${CMAKE_SOURCE_DIR}/output/windows/lib)
    set(ARCHIVE_DEST_DIR ${CMAKE_SOURCE_DIR}/output/windows/lib/static)
else()
    # unix
    set(RUNTIME_DEST_DIR ${CMAKE_SOURCE_DIR}/output/unix/bin)
    set(LIBRARY_DEST_DIR ${CMAKE_SOURCE_DIR}/output/unix/lib)
    set(ARCHIVE_DEST_DIR ${CMAKE_SOURCE_DIR}/output/unix/lib/static)
endif()

install(TARGETS libpng_1_6_24 libpng_Lib libpng_Lib_Static
        RUNTIME DESTINATION ${RUNTIME_DEST_DIR}
        LIBRARY DESTINATION ${LIBRARY_DEST_DIR}
        ARCHIVE DESTINATION ${ARCHIVE_DEST_DIR})