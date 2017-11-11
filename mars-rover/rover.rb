class Rover
  attr_accessor :xaxis, :yaxis, :direction
  #Any new rover will need three states, an X location, a Y location, and a direction.
  def initialize(xaxis, yaxis, direction)
    @xaxis = xaxis.to_i
    @yaxis = yaxis.to_i
    @direction = direction.to_s
  end
#I'll build one method to act as the controller, calling on other methods to do the data manipulation.
  def controller(action ,platform)

    case action
    when "M"
      move(platform)
    when "L"
      turn_left
    when "R"
      turn_right
    end
  end

    #We then need the methods to fufill the three actions of the controller.

  def move(platform)
    current_rover = self
    case current_rover.direction
    when "N"
      if platform.safety_check(self)
        current_rover.yaxis += 1
      else
        "Whew, that was close"
      end
    when "E"
      if platform.safety_check(self)
        current_rover.xaxis += 1
      end
    when "S"
      if platform.safety_check(self)
        current_rover.yaxis -= 1
      end
    when "W"
      if platform.safety_check(self)
        current_rover.xaxis -= 1
      end
    end
  end

  def turn_left
    case self.direction
    when "N"
      self.direction = "W"
    when "E"
      self.direction = "N"
    when "S"
      self.direction = "E"
    when "W"
      self.direction = "S"
    end
  end

  def turn_right
    case self.direction
    when "N"
      self.direction = "E"
    when "E"
      self.direction = "S"
    when "S"
      self.direction = "W"
    when "W"
      self.direction = "N"
    end
  end

end
