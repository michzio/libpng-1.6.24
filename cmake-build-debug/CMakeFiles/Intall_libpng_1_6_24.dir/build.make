# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug

# Utility rule file for Intall_libpng_1_6_24.

# Include the progress variables for this target.
include CMakeFiles/Intall_libpng_1_6_24.dir/progress.make

CMakeFiles/Intall_libpng_1_6_24: libpng
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Installing libpng_1_6_24"
	$(MAKE) install

Intall_libpng_1_6_24: CMakeFiles/Intall_libpng_1_6_24
Intall_libpng_1_6_24: CMakeFiles/Intall_libpng_1_6_24.dir/build.make

.PHONY : Intall_libpng_1_6_24

# Rule to build all files generated by this target.
CMakeFiles/Intall_libpng_1_6_24.dir/build: Intall_libpng_1_6_24

.PHONY : CMakeFiles/Intall_libpng_1_6_24.dir/build

CMakeFiles/Intall_libpng_1_6_24.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Intall_libpng_1_6_24.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Intall_libpng_1_6_24.dir/clean

CMakeFiles/Intall_libpng_1_6_24.dir/depend:
	cd /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24 /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24 /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug /Users/michzio/Developer/MyProjects/BachelorDegree/c/libpng-1.6.24/cmake-build-debug/CMakeFiles/Intall_libpng_1_6_24.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Intall_libpng_1_6_24.dir/depend

