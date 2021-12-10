require "minitest/autorun"

require_relative "../src/day_05/day_05"

class Day05Test < Minitest::Test
  SHORT_FILE = "../data/day_05_short.txt"
  LONG_FILE = "../data/day_05.txt"

  def test_part_1_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = Day05.new
    assert_equal -1, day.part_1(file_name)
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = Day05.new
    assert_equal -1, day.part_1(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = Day05.new
    assert_equal -1, day.part_2(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = Day05.new
    assert_equal -1, day.part_2(file_name)
  end
end
