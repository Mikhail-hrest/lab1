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
CMAKE_COMMAND = /snap/cmake/1413/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1413/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mikhail/TA/lab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mikhail/TA/lab1/tmp

# Include any dependencies generated for this target.
include flex/CMakeFiles/flex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include flex/CMakeFiles/flex.dir/compiler_depend.make

# Include the progress variables for this target.
include flex/CMakeFiles/flex.dir/progress.make

# Include the compile flags for this target's objects.
include flex/CMakeFiles/flex.dir/flags.make

flex/CMakeFiles/flex.dir/lex.yy.cc.o: flex/CMakeFiles/flex.dir/flags.make
flex/CMakeFiles/flex.dir/lex.yy.cc.o: /home/mikhail/TA/lab1/flex/lex.yy.cc
flex/CMakeFiles/flex.dir/lex.yy.cc.o: flex/CMakeFiles/flex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mikhail/TA/lab1/tmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object flex/CMakeFiles/flex.dir/lex.yy.cc.o"
	cd /home/mikhail/TA/lab1/tmp/flex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT flex/CMakeFiles/flex.dir/lex.yy.cc.o -MF CMakeFiles/flex.dir/lex.yy.cc.o.d -o CMakeFiles/flex.dir/lex.yy.cc.o -c /home/mikhail/TA/lab1/flex/lex.yy.cc

flex/CMakeFiles/flex.dir/lex.yy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/flex.dir/lex.yy.cc.i"
	cd /home/mikhail/TA/lab1/tmp/flex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mikhail/TA/lab1/flex/lex.yy.cc > CMakeFiles/flex.dir/lex.yy.cc.i

flex/CMakeFiles/flex.dir/lex.yy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/flex.dir/lex.yy.cc.s"
	cd /home/mikhail/TA/lab1/tmp/flex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mikhail/TA/lab1/flex/lex.yy.cc -o CMakeFiles/flex.dir/lex.yy.cc.s

# Object files for target flex
flex_OBJECTS = \
"CMakeFiles/flex.dir/lex.yy.cc.o"

# External object files for target flex
flex_EXTERNAL_OBJECTS =

flex/libflex.a: flex/CMakeFiles/flex.dir/lex.yy.cc.o
flex/libflex.a: flex/CMakeFiles/flex.dir/build.make
flex/libflex.a: flex/CMakeFiles/flex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mikhail/TA/lab1/tmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libflex.a"
	cd /home/mikhail/TA/lab1/tmp/flex && $(CMAKE_COMMAND) -P CMakeFiles/flex.dir/cmake_clean_target.cmake
	cd /home/mikhail/TA/lab1/tmp/flex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
flex/CMakeFiles/flex.dir/build: flex/libflex.a
.PHONY : flex/CMakeFiles/flex.dir/build

flex/CMakeFiles/flex.dir/clean:
	cd /home/mikhail/TA/lab1/tmp/flex && $(CMAKE_COMMAND) -P CMakeFiles/flex.dir/cmake_clean.cmake
.PHONY : flex/CMakeFiles/flex.dir/clean

flex/CMakeFiles/flex.dir/depend:
	cd /home/mikhail/TA/lab1/tmp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mikhail/TA/lab1 /home/mikhail/TA/lab1/flex /home/mikhail/TA/lab1/tmp /home/mikhail/TA/lab1/tmp/flex /home/mikhail/TA/lab1/tmp/flex/CMakeFiles/flex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : flex/CMakeFiles/flex.dir/depend

