require_relative "./bingo"

class Day04
  def part_1(file_name)
    game = Bingo.new(file_name)
    game.play_to_win
  end

  def part_2(file_name)
    game = Bingo.new(file_name)
    game.play_to_lose
  end

  # -----------------------------------------------------------------
  private
end
