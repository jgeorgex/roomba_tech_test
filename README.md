## Roomba Planning

Start with a feature test using the .txt file.

Establish room dimension (Input 1)  so you know maximum X and Y coordinates.
Input => Room Dimensions || Output => Room Dimensions

Store X & Y coordinates of each dirt patch (Input 3).
Input => Dirt Coordinates || Output => Dirt Coordinates

Establish X & Y coordinates of the hoover starting position(Input 2).
Input => Start coordinates|| Output => Start coordinates

Convert navigation route (Input 4) to  X & Y coordinates of hoovers route. (Output 1).
Input => Navigation Cardinal Directions || Output =>  Coordinates of route taken

Compare hoover route coordinates with dirt patch coordinates. Count patches of dirt cleaned up by the hoover (Output 2).
A method that iterates through two arrays looking for matches.

Have a method to returns part of Output 1 and Output 2
A method that returns the outputs of output 2 and the last array from output 1.

Find out how to get .txt file to be inputs for existing methods.

Write up README with installation instructions and how to run tests.

Install code climate to install test coverage.

Refactor and include tests for edge cases.

#### Unit Testing

Initially all tests assume assume a 5 x 5 room.

Room Dimensions

5,5 => 5,5

Hoover Start Position <br>
Initially assume position is a valid grid location

0,0 => 0,0 <br>
1,1 => 1,1 <br>
5,0 => 4,0 <br>
6,0 => 4,0<br>
10,0 => 4,0<br>
0,5 => 0,4<br>
0,6 => 0,4<br>
0,10 => 0,4<br>

Dirt Positions<br>
Initially assume dirt position is always a valid coordinate.

0,0 => 0,0<br>
1,3 => 1,3<br>
3,3 => 3,3<br>
[[1,1],[2,2]] => [[1,1,],[2,2]]<br>

Hoover Route<br>
Initially assume all instructions are in upper case<br>
Start Position, Route => Route Taken<br>

[0,0], [N] => [[0,0],[0,1]]<br>
[0,0], [E] => [[0,0],[1,0]]<br>
[1,1], [S] => [[1,1],[1,0]]<br>
[1,1], [W] => [[1,1],[0,1]]<br>
[0,0], [N,N] => [[0,0],[0,1],[0,2]]<br>
[0,0], [N,N,N] => [[0,0],[0,1],[0,2],[0,3]]<br>
[0,0], [N,N,N,E,E,E] =>[[0,0],[0,1],[0,2],[0,3],[1,3],[2,3],[3,3]]<br>
[0,0], [N,N,N,E,E,E,S,S,S,W] => [[0,0],[0,1],[0,2],[0,3],[1,3],[2,3],[3,3],[3,2],[3,1],[3,0],[2,0]]<br>
[0,0], [W] => [0,0]<br>
[0,0], [S] => [0,0]<br>
[0,0], [N,N,N,N,N] => [[0,0],[0,1],[0,2],[0,3],[0,4],[0,4]]<br>
[0,0], [E,E,E,E,E] => [[0,0],[1,0],[2,0],[3,0],[4,0],[4,0]]<br>

Final Hoover Position

[0,0], [N] => [0,1]<br>
[0,0], [E] => [1,0]<br>
[1,1], [S] => [1,0]<br>
[1,1], [W] => [0,1]<br>
[0,0], [N,N] => [0,2]<br>
[0,0], [N,N,N] => [0,3]<br>
[0,0], [N,N,N,E,E,E] => [3,3]<br>
[0,0], [N,N,N,E,E,E,S,S,S,W] => [2,0]<br>
[0,0], [W] => [0,0]<br>
[0,0], [S] => [0,0]<br>
[0,0], [N,N,N,N,N] => [0,4]<br>
[0,0], [E,E,E,E,E] => [4,0]<br>

Number of patches cleaned<br>
Dirt Position, Route => Clean count

[[0,0],[0,1]],[0,1] => 1<br>
[[0,0],[0,1],[0,2],[0,3]],[[0,1],[0,2]] => 2

## Instructions

You will write a program that navigates an imaginary robotic hoover (much like a
Roomba) through an equally imaginary room based on:

● Room dimensions as X and Y coordinates, identifying the top right corner of the
room rectangle. This room is divided up in a grid based on these dimensions; a
room that has dimensions X: 5 and Y: 5 has 5 columns and 5 rows, so 25
possible hoover positions. The bottom left corner is the point of origin for our
coordinate system, so as the room contains all coordinates its bottom left
corner is defined by X: 0 and Y: 0.

● Locations of patches of dirt, also defined by X and Y coordinates identifying the
bottom left corner of those grid positions.

● An initial hoover position (X and Y coordinates like patches of dirt)

● Driving instructions (as cardinal directions) where e.g. N and E mean "go north"
and "go east" respectively).

The room will be rectangular, has no obstacles (except the room walls), no doors and
all locations in the room will be clean (hoovering has no effect) except for the
locations of the patches of dirt presented in the program input.

Placing the hoover on a patch of dirt ("hoovering") removes the patch of dirt so that
patch is then clean for the remainder of the program run. The hoover is always on -
there is no need to enable it.
Driving into a wall has no effect (the robot skids in place).
Goal

The goal of the program is to take the room dimensions, the locations of the dirt
patches, the hoover location and the driving instructions as input and to then output
the following:

● The final hoover position (X, Y)

● The number of patches of dirt the robot cleaned up

Input

Program input will be received in a file with the format
described here. You can process it however you like. The file will be named `input.txt`
and reside in the same directory as your executable program/web page.

Example:

5 5<br>
1 2<br>
1 0<br>
2 2<br>
2 3<br>
NNESEESWNWW<br>

● the first line holds the room dimensions (X Y), separated by a single space (all
coordinates will be presented in this format)

● the second line holds the hoover position

● subsequent lines contain the zero or more positions of patches of dirt (one per
line)

● the next line then always contains the driving instructions (at least one)
Output

Program output should be printed to the standard output (STDOUT) of the terminal (or
equivalent in the browser, console.log())

● The first line of your program output should display the X and Y coordinates
marking the position of the hoover after processing all commands.

● The second line of the program output should display the number of patches of
dirt the robot cleaned up.

Example (matching the input above):

1 3<br>
1<br>
