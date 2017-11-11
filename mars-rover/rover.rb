class Rover
  attr_accessor :xaxis, :yaxis, :direction
  #Any new rover will need three states, an X location, a Y location, and a direction.
  def initialize(xaxis, yaxis, direction)
    @xaxis = xaxis.to_i
    @yaxis = yaxis.to_i
    @direction = direction.to_s
  end
#I'll build one method to act as the controller, calling on other methods to do the data manipulation.
  def controller(action)

    case action
    when "M"
      move
    when "L"
      turn_left
    when "R"
      turn_right
    end
  end

    #We then need the methods to fufill the three actions of the controller.

  def move
    case self.direction
    when "N"
      self.yaxis += 1
    when "E"
      self.xaxis += 1
    when "S"
      self.yaxis -= 1
    when "W"
      self.xaxis -= 1
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
