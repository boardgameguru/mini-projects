require_relative "rover"

#In order to solve this problem, we are going to need a few things. First, we will need to be able to create rovers with various states, so we need to make a class and create one.

#Our first line of input from the user is supposed to be the dimensions for the plateau.

puts "Welcome to Mars Rover. Please first set up your platform's size by inputting two numbers(Example: '0,0')"

platform_sizes = gets.chomp

#Once we have this data, we can save our plateau info.

platform = platform_sizes.split(',')
