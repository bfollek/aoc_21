class AimedPosition
  attr_reader :aim, :depth, :horizontal

  def initialize
    @aim = 0
    @depth = 0
    @horizontal = 0
  end

  def change(move)
    case move.direction
    when Move::FORWARD
      @horizontal += move.distance
      @depth += (@aim * move.distance)
    when Move::UP
      @aim -= move.distance
    when Move::DOWN
      @aim += move.distance
    end
  end
end
