# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aanvi/CLionProjects/CSCI2270_Recitation5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Queue.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Queue.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Queue.dir/flags.make

CMakeFiles/Queue.dir/DriverQueue.cpp.o: CMakeFiles/Queue.dir/flags.make
CMakeFiles/Queue.dir/DriverQueue.cpp.o: ../DriverQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Queue.dir/DriverQueue.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Queue.dir/DriverQueue.cpp.o -c /Users/aanvi/CLionProjects/CSCI2270_Recitation5/DriverQueue.cpp

CMakeFiles/Queue.dir/DriverQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Queue.dir/DriverQueue.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aanvi/CLionProjects/CSCI2270_Recitation5/DriverQueue.cpp > CMakeFiles/Queue.dir/DriverQueue.cpp.i

CMakeFiles/Queue.dir/DriverQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Queue.dir/DriverQueue.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aanvi/CLionProjects/CSCI2270_Recitation5/DriverQueue.cpp -o CMakeFiles/Queue.dir/DriverQueue.cpp.s

CMakeFiles/Queue.dir/QueueLL.cpp.o: CMakeFiles/Queue.dir/flags.make
CMakeFiles/Queue.dir/QueueLL.cpp.o: ../QueueLL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Queue.dir/QueueLL.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Queue.dir/QueueLL.cpp.o -c /Users/aanvi/CLionProjects/CSCI2270_Recitation5/QueueLL.cpp

CMakeFiles/Queue.dir/QueueLL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Queue.dir/QueueLL.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aanvi/CLionProjects/CSCI2270_Recitation5/QueueLL.cpp > CMakeFiles/Queue.dir/QueueLL.cpp.i

CMakeFiles/Queue.dir/QueueLL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Queue.dir/QueueLL.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aanvi/CLionProjects/CSCI2270_Recitation5/QueueLL.cpp -o CMakeFiles/Queue.dir/QueueLL.cpp.s

# Object files for target Queue
Queue_OBJECTS = \
"CMakeFiles/Queue.dir/DriverQueue.cpp.o" \
"CMakeFiles/Queue.dir/QueueLL.cpp.o"

# External object files for target Queue
Queue_EXTERNAL_OBJECTS =

Queue: CMakeFiles/Queue.dir/DriverQueue.cpp.o
Queue: CMakeFiles/Queue.dir/QueueLL.cpp.o
Queue: CMakeFiles/Queue.dir/build.make
Queue: CMakeFiles/Queue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Queue"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Queue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Queue.dir/build: Queue

.PHONY : CMakeFiles/Queue.dir/build

CMakeFiles/Queue.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Queue.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Queue.dir/clean

CMakeFiles/Queue.dir/depend:
	cd /Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aanvi/CLionProjects/CSCI2270_Recitation5 /Users/aanvi/CLionProjects/CSCI2270_Recitation5 /Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug /Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug /Users/aanvi/CLionProjects/CSCI2270_Recitation5/cmake-build-debug/CMakeFiles/Queue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Queue.dir/depend

