# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/user/Dropbox/ubuntu/iqtree2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Dropbox/ubuntu/iqtree2/build2

# Include any dependencies generated for this target.
include booster/CMakeFiles/booster.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include booster/CMakeFiles/booster.dir/compiler_depend.make

# Include the progress variables for this target.
include booster/CMakeFiles/booster.dir/progress.make

# Include the compile flags for this target's objects.
include booster/CMakeFiles/booster.dir/flags.make

booster/CMakeFiles/booster.dir/bitset_index.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/bitset_index.c.o: ../booster/bitset_index.c
booster/CMakeFiles/booster.dir/bitset_index.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object booster/CMakeFiles/booster.dir/bitset_index.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/bitset_index.c.o -MF CMakeFiles/booster.dir/bitset_index.c.o.d -o CMakeFiles/booster.dir/bitset_index.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/bitset_index.c

booster/CMakeFiles/booster.dir/bitset_index.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/bitset_index.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/bitset_index.c > CMakeFiles/booster.dir/bitset_index.c.i

booster/CMakeFiles/booster.dir/bitset_index.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/bitset_index.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/bitset_index.c -o CMakeFiles/booster.dir/bitset_index.c.s

booster/CMakeFiles/booster.dir/hashmap.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/hashmap.c.o: ../booster/hashmap.c
booster/CMakeFiles/booster.dir/hashmap.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object booster/CMakeFiles/booster.dir/hashmap.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/hashmap.c.o -MF CMakeFiles/booster.dir/hashmap.c.o.d -o CMakeFiles/booster.dir/hashmap.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/hashmap.c

booster/CMakeFiles/booster.dir/hashmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/hashmap.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/hashmap.c > CMakeFiles/booster.dir/hashmap.c.i

booster/CMakeFiles/booster.dir/hashmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/hashmap.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/hashmap.c -o CMakeFiles/booster.dir/hashmap.c.s

booster/CMakeFiles/booster.dir/io.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/io.c.o: ../booster/io.c
booster/CMakeFiles/booster.dir/io.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object booster/CMakeFiles/booster.dir/io.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/io.c.o -MF CMakeFiles/booster.dir/io.c.o.d -o CMakeFiles/booster.dir/io.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/io.c

booster/CMakeFiles/booster.dir/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/io.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/io.c > CMakeFiles/booster.dir/io.c.i

booster/CMakeFiles/booster.dir/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/io.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/io.c -o CMakeFiles/booster.dir/io.c.s

booster/CMakeFiles/booster.dir/sort.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/sort.c.o: ../booster/sort.c
booster/CMakeFiles/booster.dir/sort.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object booster/CMakeFiles/booster.dir/sort.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/sort.c.o -MF CMakeFiles/booster.dir/sort.c.o.d -o CMakeFiles/booster.dir/sort.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/sort.c

booster/CMakeFiles/booster.dir/sort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/sort.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/sort.c > CMakeFiles/booster.dir/sort.c.i

booster/CMakeFiles/booster.dir/sort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/sort.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/sort.c -o CMakeFiles/booster.dir/sort.c.s

booster/CMakeFiles/booster.dir/tree.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/tree.c.o: ../booster/tree.c
booster/CMakeFiles/booster.dir/tree.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object booster/CMakeFiles/booster.dir/tree.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/tree.c.o -MF CMakeFiles/booster.dir/tree.c.o.d -o CMakeFiles/booster.dir/tree.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/tree.c

booster/CMakeFiles/booster.dir/tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/tree.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/tree.c > CMakeFiles/booster.dir/tree.c.i

booster/CMakeFiles/booster.dir/tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/tree.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/tree.c -o CMakeFiles/booster.dir/tree.c.s

booster/CMakeFiles/booster.dir/booster.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/booster.c.o: ../booster/booster.c
booster/CMakeFiles/booster.dir/booster.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object booster/CMakeFiles/booster.dir/booster.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/booster.c.o -MF CMakeFiles/booster.dir/booster.c.o.d -o CMakeFiles/booster.dir/booster.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/booster.c

booster/CMakeFiles/booster.dir/booster.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/booster.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/booster.c > CMakeFiles/booster.dir/booster.c.i

booster/CMakeFiles/booster.dir/booster.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/booster.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/booster.c -o CMakeFiles/booster.dir/booster.c.s

booster/CMakeFiles/booster.dir/hashtables_bfields.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/hashtables_bfields.c.o: ../booster/hashtables_bfields.c
booster/CMakeFiles/booster.dir/hashtables_bfields.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object booster/CMakeFiles/booster.dir/hashtables_bfields.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/hashtables_bfields.c.o -MF CMakeFiles/booster.dir/hashtables_bfields.c.o.d -o CMakeFiles/booster.dir/hashtables_bfields.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/hashtables_bfields.c

booster/CMakeFiles/booster.dir/hashtables_bfields.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/hashtables_bfields.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/hashtables_bfields.c > CMakeFiles/booster.dir/hashtables_bfields.c.i

booster/CMakeFiles/booster.dir/hashtables_bfields.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/hashtables_bfields.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/hashtables_bfields.c -o CMakeFiles/booster.dir/hashtables_bfields.c.s

booster/CMakeFiles/booster.dir/prng.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/prng.c.o: ../booster/prng.c
booster/CMakeFiles/booster.dir/prng.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object booster/CMakeFiles/booster.dir/prng.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/prng.c.o -MF CMakeFiles/booster.dir/prng.c.o.d -o CMakeFiles/booster.dir/prng.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/prng.c

booster/CMakeFiles/booster.dir/prng.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/prng.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/prng.c > CMakeFiles/booster.dir/prng.c.i

booster/CMakeFiles/booster.dir/prng.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/prng.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/prng.c -o CMakeFiles/booster.dir/prng.c.s

booster/CMakeFiles/booster.dir/stats.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/stats.c.o: ../booster/stats.c
booster/CMakeFiles/booster.dir/stats.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object booster/CMakeFiles/booster.dir/stats.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/stats.c.o -MF CMakeFiles/booster.dir/stats.c.o.d -o CMakeFiles/booster.dir/stats.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/stats.c

booster/CMakeFiles/booster.dir/stats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/stats.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/stats.c > CMakeFiles/booster.dir/stats.c.i

booster/CMakeFiles/booster.dir/stats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/stats.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/stats.c -o CMakeFiles/booster.dir/stats.c.s

booster/CMakeFiles/booster.dir/tree_utils.c.o: booster/CMakeFiles/booster.dir/flags.make
booster/CMakeFiles/booster.dir/tree_utils.c.o: ../booster/tree_utils.c
booster/CMakeFiles/booster.dir/tree_utils.c.o: booster/CMakeFiles/booster.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object booster/CMakeFiles/booster.dir/tree_utils.c.o"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT booster/CMakeFiles/booster.dir/tree_utils.c.o -MF CMakeFiles/booster.dir/tree_utils.c.o.d -o CMakeFiles/booster.dir/tree_utils.c.o -c /home/user/Dropbox/ubuntu/iqtree2/booster/tree_utils.c

booster/CMakeFiles/booster.dir/tree_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/booster.dir/tree_utils.c.i"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Dropbox/ubuntu/iqtree2/booster/tree_utils.c > CMakeFiles/booster.dir/tree_utils.c.i

booster/CMakeFiles/booster.dir/tree_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/booster.dir/tree_utils.c.s"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Dropbox/ubuntu/iqtree2/booster/tree_utils.c -o CMakeFiles/booster.dir/tree_utils.c.s

# Object files for target booster
booster_OBJECTS = \
"CMakeFiles/booster.dir/bitset_index.c.o" \
"CMakeFiles/booster.dir/hashmap.c.o" \
"CMakeFiles/booster.dir/io.c.o" \
"CMakeFiles/booster.dir/sort.c.o" \
"CMakeFiles/booster.dir/tree.c.o" \
"CMakeFiles/booster.dir/booster.c.o" \
"CMakeFiles/booster.dir/hashtables_bfields.c.o" \
"CMakeFiles/booster.dir/prng.c.o" \
"CMakeFiles/booster.dir/stats.c.o" \
"CMakeFiles/booster.dir/tree_utils.c.o"

# External object files for target booster
booster_EXTERNAL_OBJECTS =

booster/libbooster.a: booster/CMakeFiles/booster.dir/bitset_index.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/hashmap.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/io.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/sort.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/tree.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/booster.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/hashtables_bfields.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/prng.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/stats.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/tree_utils.c.o
booster/libbooster.a: booster/CMakeFiles/booster.dir/build.make
booster/libbooster.a: booster/CMakeFiles/booster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Dropbox/ubuntu/iqtree2/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libbooster.a"
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && $(CMAKE_COMMAND) -P CMakeFiles/booster.dir/cmake_clean_target.cmake
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/booster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
booster/CMakeFiles/booster.dir/build: booster/libbooster.a
.PHONY : booster/CMakeFiles/booster.dir/build

booster/CMakeFiles/booster.dir/clean:
	cd /home/user/Dropbox/ubuntu/iqtree2/build2/booster && $(CMAKE_COMMAND) -P CMakeFiles/booster.dir/cmake_clean.cmake
.PHONY : booster/CMakeFiles/booster.dir/clean

booster/CMakeFiles/booster.dir/depend:
	cd /home/user/Dropbox/ubuntu/iqtree2/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Dropbox/ubuntu/iqtree2 /home/user/Dropbox/ubuntu/iqtree2/booster /home/user/Dropbox/ubuntu/iqtree2/build2 /home/user/Dropbox/ubuntu/iqtree2/build2/booster /home/user/Dropbox/ubuntu/iqtree2/build2/booster/CMakeFiles/booster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : booster/CMakeFiles/booster.dir/depend

