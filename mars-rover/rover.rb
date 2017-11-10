class Rover
  attr_reader :xaxis, :yaxis, :direction
  #Any new rover will need three states, an X location, a Y location, and a direction.
  def initialize(xaxis, yaxis, direction)
    @xaxis = xaxis
    @yaxis = yaxis
    @direction = direction
  end
end
