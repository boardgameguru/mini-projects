class Platform

  def initialize(max_x, max_y)
    @max_x = max_x
    @max_y = max_y
  end

# We want the plateau to make sure that the rovers can never drive off of it. I'll create a method to check that a movement would not cause the rover to go to far.
  def safety_check(rover)
    case rover.direction
    when "N"
       return rover.yaxis + 1 <= @max_y
    when "E"
       return rover.xaxis + 1 <= @max_x
    when "S"
       return rover.yaxis - 1 >= 0
    when "W"
       return rover.xaxis - 1 >= 0
    end
  end
end
