require_relative "./move"
require_relative "./position"

class Day02
  def part_1(file_name)
    pos = Position.new
    moves = Move.load_file(file_name)
    moves.each do |move|
      case move.direction
      when "forward"
        pos.horizontal += move.distance
      when "up"
        pos.depth -= move.distance
      when "down"
        pos.depth += move.distance
      end
    end
    pos.depth * pos.horizontal
  end

  def part_2(file_name)
    nil
  end

  # -----------------------------------------------------------------
  private
end
