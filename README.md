## Task

You will write a program that navigates an imaginary robotic hoover (much like a Roomba) through an equally imaginary room based on:

● Room dimensions as X and Y coordinates, identifying the top right corner of the room rectangle. This room is divided up in a grid based on these dimensions; a room that has dimensions X: 5 and Y: 5 has 5 columns and 5 rows, so 25 possible hoover positions. The bottom left corner is the point of origin for our coordinate system, so as the room contains all coordinates its bottom left corner is defined by X: 0 and Y: 0.

● Locations of patches of dirt, also defined by X and Y coordinates identifying the bottom left corner of those grid positions.

● An initial hoover position (X and Y coordinates like patches of dirt)

● Driving instructions (as cardinal directions) where e.g. N and E mean "go north"
and "go east" respectively).

The room will be rectangular, has no obstacles (except the room walls), no doors and all locations in the room will be clean (hoovering has no effect) except for the locations of the patches of dirt presented in the program input.

Placing the hoover on a patch of dirt ("hoovering") removes the patch of dirt so that patch is then clean for the remainder of the program run. The hoover is always on - there is no need to enable it.
Driving into a wall has no effect (the robot skids in place).

Goal

The goal of the program is to take the room dimensions, the locations of the dirt patches, the hoover location and the driving instructions as input and to then output the following:

● The final hoover position (X, Y)

● The number of patches of dirt the robot cleaned up

Input

Program input will be received in a file with the format
described here. You can process it however you like. The file will be named `input.txt` and reside in the same directory as your executable program/web page.

Example:

5 5<br>
1 2<br>
1 0<br>
2 2<br>
2 3<br>
NNESEESWNWW<br>

● the first line holds the room dimensions (X Y), separated by a single space (all coordinates will be presented in this format)

● the second line holds the hoover position

● subsequent lines contain the zero or more positions of patches of dirt (one per line)

● the next line then always contains the driving instructions (at least one)

Output

Program output should be printed to the standard output (STDOUT) of the terminal (or equivalent in the browser, console.log())

● The first line of your program output should display the X and Y coordinates marking the position of the hoover after processing all commands.

● The second line of the program output should display the number of patches of dirt the robot cleaned up.

Example (matching the input above):

1 3<br>
1<br>

## Instructions

Instalation and testing

1.  Clone this repository.
2.  From the command line go in to the main program directory (robot_hoover)
3.  To run the prgrams tests from within the main program directory \$rspec

To run the program from the terminal

1.  \$ irb <br>
2.  \$ require './lib/roomba_manager.rb' (This should return true) <br>
3.  \$ require './lib/hoover.rb' (This shopuld return true) <br>
4.  \$ hoover = Hoover.new (This creates a new hoover called 'hoover') <br>
5.  \$ hoover.run_hoover (This runs the program and returns the required output. Line 1 is the final position of the hoover. Line 2 is the number of dirt patches the hoover cleaned up.)

## To Do

1.  Edge cases.
2.  Refactoring.
3.  Use doubles / stubbing for tests.
