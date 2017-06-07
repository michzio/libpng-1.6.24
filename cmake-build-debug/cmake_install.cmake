# Install script for directory: /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/bin/libpng")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/bin" TYPE EXECUTABLE FILES "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/libpng")
  if(EXISTS "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/bin/libpng" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/bin/libpng")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/bin/libpng")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/liblibpng.dylib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib" TYPE SHARED_LIBRARY FILES "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/liblibpng.dylib")
  if(EXISTS "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/liblibpng.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/liblibpng.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/liblibpng.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/static/liblibpng.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/static" TYPE STATIC_LIBRARY FILES "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/liblibpng.a")
  if(EXISTS "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/static/liblibpng.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/static/liblibpng.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/output/unix/lib/static/liblibpng.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")