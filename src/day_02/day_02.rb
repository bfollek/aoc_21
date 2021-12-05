require_relative "./move"
require_relative "./position"
require_relative "./aimed_position"

class Day02
  def part_1(file_name)
    pos = Position.new
    moves = Move.load_file(file_name)
    moves.each { |move| pos.change move }
    return pos.depth * pos.horizontal
  end

  def part_2(file_name)
    aimed_pos = AimedPosition.new
    moves = Move.load_file(file_name)
    moves.each { |move| aimed_pos.change move }
    return aimed_pos.depth * aimed_pos.horizontal
  end

  # -----------------------------------------------------------------
  private
end
