# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "/Users/ph/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/ph/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/a2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a2.dir/flags.make

CMakeFiles/a2.dir/simpletest.c.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/simpletest.c.o: ../simpletest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/a2.dir/simpletest.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/a2.dir/simpletest.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/simpletest.c"

CMakeFiles/a2.dir/simpletest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/a2.dir/simpletest.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/simpletest.c" > CMakeFiles/a2.dir/simpletest.c.i

CMakeFiles/a2.dir/simpletest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/a2.dir/simpletest.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/simpletest.c" -o CMakeFiles/a2.dir/simpletest.c.s

CMakeFiles/a2.dir/smalloc.c.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/smalloc.c.o: ../smalloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/a2.dir/smalloc.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/a2.dir/smalloc.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/smalloc.c"

CMakeFiles/a2.dir/smalloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/a2.dir/smalloc.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/smalloc.c" > CMakeFiles/a2.dir/smalloc.c.i

CMakeFiles/a2.dir/smalloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/a2.dir/smalloc.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/smalloc.c" -o CMakeFiles/a2.dir/smalloc.c.s

CMakeFiles/a2.dir/testhelpers.c.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/testhelpers.c.o: ../testhelpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/a2.dir/testhelpers.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/a2.dir/testhelpers.c.o   -c "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/testhelpers.c"

CMakeFiles/a2.dir/testhelpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/a2.dir/testhelpers.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/testhelpers.c" > CMakeFiles/a2.dir/testhelpers.c.i

CMakeFiles/a2.dir/testhelpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/a2.dir/testhelpers.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/testhelpers.c" -o CMakeFiles/a2.dir/testhelpers.c.s

# Object files for target a2
a2_OBJECTS = \
"CMakeFiles/a2.dir/simpletest.c.o" \
"CMakeFiles/a2.dir/smalloc.c.o" \
"CMakeFiles/a2.dir/testhelpers.c.o"

# External object files for target a2
a2_EXTERNAL_OBJECTS =

a2: CMakeFiles/a2.dir/simpletest.c.o
a2: CMakeFiles/a2.dir/smalloc.c.o
a2: CMakeFiles/a2.dir/testhelpers.c.o
a2: CMakeFiles/a2.dir/build.make
a2: CMakeFiles/a2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable a2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a2.dir/build: a2

.PHONY : CMakeFiles/a2.dir/build

CMakeFiles/a2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a2.dir/clean

CMakeFiles/a2.dir/depend:
	cd "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug" "/Users/ph/Desktop/UofT/Year 3/CSC209/fartootp/a2/cmake-build-debug/CMakeFiles/a2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/a2.dir/depend
