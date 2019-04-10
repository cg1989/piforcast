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

# Include any dependencies generated for this target.
include src/CMakeFiles/piforcast.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/piforcast.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/piforcast.dir/flags.make

src/qrc_resources.cpp: ../src/qml/main.qml
src/qrc_resources.cpp: ../src/qml/Icons/rain.svg
src/qrc_resources.cpp: ../src/qml/Icons/f.svg
src/qrc_resources.cpp: ../src/resources.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_resources.cpp"
	cd /home/cam/projects/piforcast/build/src && /usr/lib/qt5/bin/rcc --name resources --output /home/cam/projects/piforcast/build/src/qrc_resources.cpp /home/cam/projects/piforcast/src/resources.qrc

src/CMakeFiles/piforcast.dir/main.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/piforcast.dir/main.cpp.o"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/main.cpp.o -c /home/cam/projects/piforcast/src/main.cpp

src/CMakeFiles/piforcast.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/main.cpp.i"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/projects/piforcast/src/main.cpp > CMakeFiles/piforcast.dir/main.cpp.i

src/CMakeFiles/piforcast.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/main.cpp.s"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/projects/piforcast/src/main.cpp -o CMakeFiles/piforcast.dir/main.cpp.s

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o: src/qrc_resources.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/qrc_resources.cpp.o -c /home/cam/projects/piforcast/build/src/qrc_resources.cpp

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/qrc_resources.cpp.i"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/projects/piforcast/build/src/qrc_resources.cpp > CMakeFiles/piforcast.dir/qrc_resources.cpp.i

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/qrc_resources.cpp.s"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/projects/piforcast/build/src/qrc_resources.cpp -o CMakeFiles/piforcast.dir/qrc_resources.cpp.s

src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o: src/piforcast_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o -c /home/cam/projects/piforcast/build/src/piforcast_autogen/mocs_compilation.cpp

src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.i"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/projects/piforcast/build/src/piforcast_autogen/mocs_compilation.cpp > CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.i

src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.s"
	cd /home/cam/projects/piforcast/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/projects/piforcast/build/src/piforcast_autogen/mocs_compilation.cpp -o CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.s

# Object files for target piforcast
piforcast_OBJECTS = \
"CMakeFiles/piforcast.dir/main.cpp.o" \
"CMakeFiles/piforcast.dir/qrc_resources.cpp.o" \
"CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o"

# External object files for target piforcast
piforcast_EXTERNAL_OBJECTS =

src/piforcast: src/CMakeFiles/piforcast.dir/main.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/piforcast_autogen/mocs_compilation.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/build.make
src/piforcast: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.11.1
src/piforcast: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.11.1
src/piforcast: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.11.1
src/piforcast: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.11.1
src/piforcast: src/CMakeFiles/piforcast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cam/projects/piforcast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable piforcast"
	cd /home/cam/projects/piforcast/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/piforcast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/piforcast.dir/build: src/piforcast

.PHONY : src/CMakeFiles/piforcast.dir/build

src/CMakeFiles/piforcast.dir/clean:
	cd /home/cam/projects/piforcast/build/src && $(CMAKE_COMMAND) -P CMakeFiles/piforcast.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/piforcast.dir/clean

src/CMakeFiles/piforcast.dir/depend: src/qrc_resources.cpp
	cd /home/cam/projects/piforcast/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cam/projects/piforcast /home/cam/projects/piforcast/src /home/cam/projects/piforcast/build /home/cam/projects/piforcast/build/src /home/cam/projects/piforcast/build/src/CMakeFiles/piforcast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/piforcast.dir/depend

