require_relative "./bingo"

class Day04
  def part_1(file_name)
    game = Bingo.load_file(file_name)
    game.play_to_win
  end

  def part_2(file_name)
    game = Bingo.load_file(file_name)
  end

  # -----------------------------------------------------------------
  private
end

# byebug day_04.rb
# dir = File.dirname(__FILE__)
# file_name = File.join(dir, "../../data/day_04_short.txt")
# day_04 = Day04.new
# puts day_04.part_1(file_name)
