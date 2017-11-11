require_relative "rover"

#In order to solve this problem, we are going to need a few things. First, we will need to be able to create rovers with various states, so we need to make a class and create one.

#Our first line of input from the user is supposed to be the dimensions for the plateau.

puts "Welcome to Mars Rover. Please first set up your platform's size by inputting two numbers(Example:9 9)"

platform_sizes = gets.chomp

# #Once we have this data, we can save our plateau info.

platform = platform_sizes.split('')

# Next, we are supposed to take two requests, one for a new rover and another for its movements.

puts "Please place your first rover onto your plateau. Please give corordinates and direction. Example: (0 0 N)"

first_rover = gets.chomp

puts "Please provide your directions for the rover. M = move forward, L = turn left, R = turn right."

first_directions = gets.chomp

# Now we can take that input and create our new rover, and complete the actions.

rover1_array = first_rover.split(' ')

rover1 = Rover.new(rover1_array[0].to_i, rover1_array[1].to_i, rover1_array[2])

direction_array = first_directions.upcase.split('')

direction_array.each { |action| rover1.controller(action) }
