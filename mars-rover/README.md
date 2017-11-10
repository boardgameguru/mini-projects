The Story

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

Imagine a grid that looks something like this:

  _ _ _ _ _ _ _ _ _
9|_|_|_|_|_|_|_|_|_|        N
8|_|_|_|_|_|_|_|_|_|      W   E
7|_|_|_|_|_|_|_|_|_|        S
6|_|_|_|_|_|_|_|_|_|
5|_|_|_|_|_|_|_|_|_|
4|_|_|_|_|_|_|_|_|_|
3|_|_|_|_|_|_|_|_|_|
2|_|_|_|_|_|_|_|_|_|
1|_|_|_|_|_|_|_|_|_|
0 1 2 3 4 5 6 7 8 9

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'.

'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
'M' means move forward one grid point, and maintain the same heading.
Assume that the square directly North from (x, y) is (x, y+1).

The Setup

Input

The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.

The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.

Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

Your program should accept 5 inputs with gets.

Output

The output for each rover should be its final co-ordinates and heading.

INPUT AND OUTPUT

Test Input:
5 5                  > Our first line is our plateau size.
1 2 N                > Lines 2 and 3 are paired, with the first being our initial start position and header,
LMLMLMLMM            > and the second line being a series of move and turn instructions.
3 3 E                > Another 2-line pair, 1 pair per rover.
MMRMMRMRRM

Expected Output:
1 3 N                > When rover bot is done doing its instructions, output its current position
5 1 E                > The first line is the first rover, the second line is the next rover
How To Approach This Problem

There's a lot of different aspects to this problem. This is a great opportunity to practice your problem solving skills! The most important step is to start by breaking things down into small pieces and solve one thing at a time.

Given that we're practicing Object-Oriented Programming, we're going to want to focus on identifying different "things" in this program.

What is the easiest "thing" to reason about here? The Rover! We can already start picturing rovers moving across Mars.

As we already know, objects have state and behaviour. In Ruby, our classes have instance variables and methods. What kind of state do we need for our rovers? What about behaviours?

State

x coordinate
y coordinate
direction
Behaviour

read instruction
move
turn
Start by creating a Rover class that has these properties. Given that each rover starts with a location and direction, perhaps it's a good idea to have an initialize method for each rover that accepts these parameters.

Next up we'll need to think about behaviour. Behaviours have the ability to read and affect the state of an object. We express those as methods.

read_instruction should accept an instruction and decide whether to tell the rover to move or turn. It simply delegates to more specific behaviour.

move affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates.

turn affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.

Once you've figured out how to move and turn your rover, the rest gets much easier because you got the seemingly complex stuff out of the way first! All you'll need to figure out from here is how to read and split up the instructions so that you can pass them on to your rovers.

Taking It Further (optional)

Try thinking about other object possibilities, such as a MissionControl object that's responsible for reading and handing the instructions over to the rovers. It could also be responsible for reporting their final states.

Another possibility is a Plateau object. This object could give you perspective of multiple rovers on a given board. This could allow you to write methods to verify if the rovers are trying to move off the board or colliding with one another.
