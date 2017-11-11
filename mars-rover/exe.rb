require_relative "rover"
require_relative "platform"

#In order to solve this problem, we are going to need a few things. First, we will need to be able to create rovers with various states, so we need to make a class and create one.

#Our first line of input from the user is supposed to be the dimensions for the plateau.

puts "Welcome to Mars Rover. Please first set up your platform's size by inputting two numbers(Example:9 9)"

platform_sizes = gets.chomp

# #Once we have this data, we can save our plateau info.

platform_array = platform_sizes.split('')

platform = Platform.new(platform_array[0].to_i, platform_array[1].to_i)

# Next, we are supposed to take two requests, one for a new rover and another for its movements.

puts "Please place your first rover onto your platform. Please give corordinates and direction. Example: (0 0 N)"

first_rover = gets.chomp

puts "Please provide your directions for the rover. M = move forward, L = turn left, R = turn right."

first_directions = gets.chomp

# Now we can take that input and create our new rover, and complete the actions.

rover1_array = first_rover.split(' ')

rover1 = Rover.new(rover1_array[0].to_i, rover1_array[1].to_i, rover1_array[2])

direction_array = first_directions.upcase.split('')

direction_array.each { |action| rover1.controller(action, platform) }
#Now we do it again for the second command of insructions.

puts "Please place your second rover onto your platform. Please give corordinates and direction. Example: (0 0 N)"

second_rover = gets.chomp

puts "Please provide your directions for the second rover. M = move forward, L = turn left, R = turn right."

second_directions = gets.chomp

rover2_array = second_rover.split(' ')

rover2 = Rover.new(rover2_array[0].to_i, rover2_array[1].to_i, rover2_array[2])

direction_array2 = second_directions.upcase.split('')

direction_array2.each { |action| rover2.controller(action, platform) }

#Then, we give the results back.

puts "#{rover1.xaxis} #{rover1.yaxis} #{rover1.direction}"
puts "#{rover2.xaxis} #{rover2.yaxis} #{rover2.direction}"
