require_relative "./bingo"

class Day04
  def part_1(file_name)
    game = Bingo.load_file(file_name)
    game.play
  end

  def part_2(file_name)
    game = Bingo.load_file(file_name)
  end

  # -----------------------------------------------------------------
  private
end
