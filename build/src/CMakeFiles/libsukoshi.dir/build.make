# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/uks/sjakk/c/sukoshi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/uks/sjakk/c/sukoshi/build

# Include any dependencies generated for this target.
include src/CMakeFiles/libsukoshi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/libsukoshi.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/libsukoshi.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/libsukoshi.dir/flags.make

src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o: src/CMakeFiles/libsukoshi.dir/flags.make
src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o: /home/uks/sjakk/c/sukoshi/src/libsukoshi.cpp
src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o: src/CMakeFiles/libsukoshi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/uks/sjakk/c/sukoshi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o"
	cd /home/uks/sjakk/c/sukoshi/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o -MF CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o.d -o CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o -c /home/uks/sjakk/c/sukoshi/src/libsukoshi.cpp

src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/libsukoshi.dir/libsukoshi.cpp.i"
	cd /home/uks/sjakk/c/sukoshi/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uks/sjakk/c/sukoshi/src/libsukoshi.cpp > CMakeFiles/libsukoshi.dir/libsukoshi.cpp.i

src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/libsukoshi.dir/libsukoshi.cpp.s"
	cd /home/uks/sjakk/c/sukoshi/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uks/sjakk/c/sukoshi/src/libsukoshi.cpp -o CMakeFiles/libsukoshi.dir/libsukoshi.cpp.s

# Object files for target libsukoshi
libsukoshi_OBJECTS = \
"CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o"

# External object files for target libsukoshi
libsukoshi_EXTERNAL_OBJECTS =

src/libsukoshi.a: src/CMakeFiles/libsukoshi.dir/libsukoshi.cpp.o
src/libsukoshi.a: src/CMakeFiles/libsukoshi.dir/build.make
src/libsukoshi.a: src/CMakeFiles/libsukoshi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/uks/sjakk/c/sukoshi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsukoshi.a"
	cd /home/uks/sjakk/c/sukoshi/build/src && $(CMAKE_COMMAND) -P CMakeFiles/libsukoshi.dir/cmake_clean_target.cmake
	cd /home/uks/sjakk/c/sukoshi/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libsukoshi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/libsukoshi.dir/build: src/libsukoshi.a
.PHONY : src/CMakeFiles/libsukoshi.dir/build

src/CMakeFiles/libsukoshi.dir/clean:
	cd /home/uks/sjakk/c/sukoshi/build/src && $(CMAKE_COMMAND) -P CMakeFiles/libsukoshi.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/libsukoshi.dir/clean

src/CMakeFiles/libsukoshi.dir/depend:
	cd /home/uks/sjakk/c/sukoshi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/uks/sjakk/c/sukoshi /home/uks/sjakk/c/sukoshi/src /home/uks/sjakk/c/sukoshi/build /home/uks/sjakk/c/sukoshi/build/src /home/uks/sjakk/c/sukoshi/build/src/CMakeFiles/libsukoshi.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/libsukoshi.dir/depend
