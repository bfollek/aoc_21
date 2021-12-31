require "minitest/autorun"

DAY = "07"

require_relative "../src/day_#{DAY}/day_#{DAY}"

class Day07Test < Minitest::Test
  SHORT_FILE = "../data/day_#{DAY}_short.txt"
  LONG_FILE = "../data/day_#{DAY}.txt"

  CLASS = Object.const_get("Day#{DAY}") # Assumes class exists

  def test_part_1_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal 37, day.part_1(file_name)
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal 347509, day.part_1(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal 168, day.part_2(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal -1, day.part_2(file_name)
  end
end
