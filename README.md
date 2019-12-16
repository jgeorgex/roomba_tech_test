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

Hoover Start Position
Initially assume position is a valid grid location

0,0 => 0,0
1,1 => 1,1
5,0 => 4,0
6,0 => 4,0
10,0 => 4,0
0,5 => 0,4
0,6 => 0,4
0,10 => 0,4

Dirt Positions
Initially assume dirt position is always a valid coordinate.

0,0 => 0,0
1,3 => 1,3
3,3 => 3,3
[[1,1],[2,2]] => [[1,1,],[2,2]]

Hoover Route
Initially assume all instructions are in upper case
Start Position, Route => Route Taken

[0,0], [N] => [[0,0],[0,1]]
[0,0], [E] => [[0,0],[1,0]]
[1,1], [S] => [[1,1],[1,0]]
[1,1], [W] => [[1,1],[0,1]]
[0,0], [N,N] => [[0,0],[0,1],[0,2]]
[0,0], [N,N,N] => [[0,0],[0,1],[0,2],[0,3]]
[0,0], [N,N,N,E,E,E] =>[[0,0],[0,1],[0,2],[0,3],[1,3],[2,3],[3,3]]
[0,0], [N,N,N,E,E,E,S,S,S,W] => [[0,0],[0,1],[0,2],[0,3],[1,3],[2,3],[3,3],[3,2],[3,1],[3,0],[2,0]]
[0,0], [W] => [0,0]
[0,0], [S] => [0,0]
[0,0], [N,N,N,N,N] => [[0,0],[0,1],[0,2],[0,3],[0,4],[0,4]]
[0,0], [E,E,E,E,E] => [[0,0],[1,0],[2,0],[3,0],[4,0],[4,0]]

Final Hoover Position

[0,0], [N] => [0,1]
[0,0], [E] => [1,0]
[1,1], [S] => [1,0]
[1,1], [W] => [0,1]
[0,0], [N,N] => [0,2]
[0,0], [N,N,N] => [0,3]
[0,0], [N,N,N,E,E,E] => [3,3]
[0,0], [N,N,N,E,E,E,S,S,S,W] => [2,0]
[0,0], [W] => [0,0]
[0,0], [S] => [0,0]
[0,0], [N,N,N,N,N] => [0,4]
[0,0], [E,E,E,E,E] => [4,0]

Number of patches cleaned
Dirt Position, Route => Clean count

[[0,0],[0,1]],[0,1] => 1
[[0,0],[0,1],[0,2],[0,3]],[[0,1],[0,2]] => 2
