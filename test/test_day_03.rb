require "minitest/autorun"

require_relative "../src/day_03/day_03"

class Day03Test < Minitest::Test
  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03.txt")
    day_03 = Day03.new
    assert_equal -1, day_03.part_1(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03.txt")
    day_03 = Day03.new
    assert_equal -1, day_03.part_2(file_name)
  end
end
