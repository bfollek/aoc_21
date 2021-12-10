require "minitest/autorun"

require_relative "../src/day_05/day_05"

class Day05Test < Minitest::Test
  def test_part_1_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_05_short.txt")
    day_05 = Day05.new
    assert_equal -1, day_05.part_1(file_name)
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_05.txt")
    day_05 = Day05.new
    assert_equal -1, day_05.part_1(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_05_short.txt")
    day_05 = Day05.new
    assert_equal -1, day_05.part_2(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_05.txt")
    day_05 = Day05.new
    assert_equal -1, day_05.part_2(file_name)
  end
end
