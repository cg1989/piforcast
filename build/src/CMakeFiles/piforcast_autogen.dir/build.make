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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cam/projects/piforcast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cam/projects/piforcast/build

# Utility rule file for piforcast_autogen.

# Include the progress variables for this target.
include src/CMakeFiles/piforcast_autogen.dir/progress.make

src/CMakeFiles/piforcast_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target piforcast"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/cmake -E cmake_autogen /home/cam/projects/piforcast/build/src/CMakeFiles/piforcast_autogen.dir/AutogenInfo.cmake Debug

piforcast_autogen: src/CMakeFiles/piforcast_autogen
piforcast_autogen: src/CMakeFiles/piforcast_autogen.dir/build.make

.PHONY : piforcast_autogen

# Rule to build all files generated by this target.
src/CMakeFiles/piforcast_autogen.dir/build: piforcast_autogen

.PHONY : src/CMakeFiles/piforcast_autogen.dir/build

src/CMakeFiles/piforcast_autogen.dir/clean:
	cd /home/cam/projects/piforcast/build/src && $(CMAKE_COMMAND) -P CMakeFiles/piforcast_autogen.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/piforcast_autogen.dir/clean

src/CMakeFiles/piforcast_autogen.dir/depend:
	cd /home/cam/projects/piforcast/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cam/projects/piforcast /home/cam/projects/piforcast/src /home/cam/projects/piforcast/build /home/cam/projects/piforcast/build/src /home/cam/projects/piforcast/build/src/CMakeFiles/piforcast_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/piforcast_autogen.dir/depend

