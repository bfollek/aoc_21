class Position
  attr_reader :depth, :horizontal

  def initialize
    @depth = 0
    @horizontal = 0
  end

  def change(move)
    case move.direction
    when "forward"
      @horizontal += move.distance
    when "up"
      @depth -= move.distance
    when "down"
      @depth += move.distance
    end
  end
end
