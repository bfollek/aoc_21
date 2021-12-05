require_relative "./move"
require_relative "./position"

class Day02
  def part_1(file_name)
    pos = Position.new
    moves = Move.load_file(file_name)
    moves.each { |move| pos.change move }
    return pos.depth * pos.horizontal
  end

  def part_2(file_name)
    nil
  end

  # -----------------------------------------------------------------
  private
end
