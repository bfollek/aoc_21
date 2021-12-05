class Position
  FORWARD = "forward"
  UP = "up"
  DOWN = "down"

  attr_reader :depth, :horizontal

  def initialize
    @depth = 0
    @horizontal = 0
  end

  def change(move)
    case move.direction
    when FORWARD
      @horizontal += move.distance
    when UP
      @depth -= move.distance
    when DOWN
      @depth += move.distance
    end
  end
end
