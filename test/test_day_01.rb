require "minitest/autorun"

require_relative "../src/day_01/day_01"

class Day01Test < Minitest::Test
  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_01.txt")
    day_01 = Day01.new
    assert_equal 1475, day_01.part_1(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_01.txt")
    day_01 = Day01.new
    assert_equal 1516, day_01.part_2(file_name)
  end
end
