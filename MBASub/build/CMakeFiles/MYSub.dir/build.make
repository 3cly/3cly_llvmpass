# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /mnt/f/3clyLLVMPASS/MBASub

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/f/3clyLLVMPASS/MBASub/build

# Include any dependencies generated for this target.
include CMakeFiles/MYSub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MYSub.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MYSub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MYSub.dir/flags.make

CMakeFiles/MYSub.dir/MBASub.cpp.o: CMakeFiles/MYSub.dir/flags.make
CMakeFiles/MYSub.dir/MBASub.cpp.o: /mnt/f/3clyLLVMPASS/MBASub/MBASub.cpp
CMakeFiles/MYSub.dir/MBASub.cpp.o: CMakeFiles/MYSub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/f/3clyLLVMPASS/MBASub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MYSub.dir/MBASub.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MYSub.dir/MBASub.cpp.o -MF CMakeFiles/MYSub.dir/MBASub.cpp.o.d -o CMakeFiles/MYSub.dir/MBASub.cpp.o -c /mnt/f/3clyLLVMPASS/MBASub/MBASub.cpp

CMakeFiles/MYSub.dir/MBASub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MYSub.dir/MBASub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/f/3clyLLVMPASS/MBASub/MBASub.cpp > CMakeFiles/MYSub.dir/MBASub.cpp.i

CMakeFiles/MYSub.dir/MBASub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MYSub.dir/MBASub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/f/3clyLLVMPASS/MBASub/MBASub.cpp -o CMakeFiles/MYSub.dir/MBASub.cpp.s

# Object files for target MYSub
MYSub_OBJECTS = \
"CMakeFiles/MYSub.dir/MBASub.cpp.o"

# External object files for target MYSub
MYSub_EXTERNAL_OBJECTS =

libMYSub.so: CMakeFiles/MYSub.dir/MBASub.cpp.o
libMYSub.so: CMakeFiles/MYSub.dir/build.make
libMYSub.so: CMakeFiles/MYSub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/f/3clyLLVMPASS/MBASub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libMYSub.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MYSub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MYSub.dir/build: libMYSub.so
.PHONY : CMakeFiles/MYSub.dir/build

CMakeFiles/MYSub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MYSub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MYSub.dir/clean

CMakeFiles/MYSub.dir/depend:
	cd /mnt/f/3clyLLVMPASS/MBASub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/f/3clyLLVMPASS/MBASub /mnt/f/3clyLLVMPASS/MBASub /mnt/f/3clyLLVMPASS/MBASub/build /mnt/f/3clyLLVMPASS/MBASub/build /mnt/f/3clyLLVMPASS/MBASub/build/CMakeFiles/MYSub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MYSub.dir/depend

