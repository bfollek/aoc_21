require "minitest/autorun"

require_relative "../src/day_04/day_04"

class Day04Test < Minitest::Test
  def test_part_1_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_04_short.txt")
    day_04 = Day04.new
    assert_equal -1, day_04.part_1(file_name)
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_04.txt")
    day_04 = Day04.new
    assert_equal -1, day_04.part_1(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_04_short.txt")
    day_04 = Day04.new
    assert_equal -1, day_04.part_2(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_04.txt")
    day_04 = Day04.new
    assert_equal -1, day_04.part_2(file_name)
  end
end
