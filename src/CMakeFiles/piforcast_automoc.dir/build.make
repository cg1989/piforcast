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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Downloads/piforcast-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Downloads/piforcast-master

# Utility rule file for piforcast_automoc.

# Include the progress variables for this target.
include src/CMakeFiles/piforcast_automoc.dir/progress.make

src/CMakeFiles/piforcast_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/Downloads/piforcast-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc for target piforcast"
	cd /home/pi/Downloads/piforcast-master/src && /usr/bin/cmake -E cmake_autogen /home/pi/Downloads/piforcast-master/src/CMakeFiles/piforcast_automoc.dir/ ""

piforcast_automoc: src/CMakeFiles/piforcast_automoc
piforcast_automoc: src/CMakeFiles/piforcast_automoc.dir/build.make

.PHONY : piforcast_automoc

# Rule to build all files generated by this target.
src/CMakeFiles/piforcast_automoc.dir/build: piforcast_automoc

.PHONY : src/CMakeFiles/piforcast_automoc.dir/build

src/CMakeFiles/piforcast_automoc.dir/clean:
	cd /home/pi/Downloads/piforcast-master/src && $(CMAKE_COMMAND) -P CMakeFiles/piforcast_automoc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/piforcast_automoc.dir/clean

src/CMakeFiles/piforcast_automoc.dir/depend:
	cd /home/pi/Downloads/piforcast-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Downloads/piforcast-master /home/pi/Downloads/piforcast-master/src /home/pi/Downloads/piforcast-master /home/pi/Downloads/piforcast-master/src /home/pi/Downloads/piforcast-master/src/CMakeFiles/piforcast_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/piforcast_automoc.dir/depend

