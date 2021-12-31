require "minitest/autorun"

DAY = "08" # CHANGE

require_relative "../src/day_#{DAY}/day_#{DAY}"

class Day08Test < Minitest::Test # CHANGE
  SHORT_FILE = "../data/day_#{DAY}_short.txt"
  LONG_FILE = "../data/day_#{DAY}.txt"

  CLASS = Object.const_get("Day#{DAY}") # Assumes class exists

  def test_part_1_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal -1, day.part_1(file_name)
  end

  def test_part_1
    skip
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal -1, day.part_1(file_name)
  end

  def test_part_2_short
    skip
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal -1, day.part_2(file_name)
  end

  def test_part_2
    skip
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal -1, day.part_2(file_name)
  end
end
