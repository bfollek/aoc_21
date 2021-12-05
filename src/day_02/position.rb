class Position
  attr_reader :depth, :horizontal

  def initialize
    @depth = 0
    @horizontal = 0
  end

  def change(move)
    case move.direction
    when Move::FORWARD
      @horizontal += move.distance
    when Move::UP
      @depth -= move.distance
    when Move::DOWN
      @depth += move.distance
    end
  end
end
