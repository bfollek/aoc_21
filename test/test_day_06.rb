require "minitest/autorun"

DAY = "06"

require_relative "../src/day_#{DAY}/day_#{DAY}"

class Day06Test < Minitest::Test
  SHORT_FILE = "../data/day_#{DAY}_short.txt"
  LONG_FILE = "../data/day_#{DAY}.txt"

  CLASS = Object.const_get("Day#{DAY}") # Assumes class exists

  def test_part_1_short_18_days
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal 26, day.part_1(file_name, 18)
  end

  def test_part_1_short_80_days
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal 5934, day.part_1(file_name, 80)
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal 362346, day.part_1(file_name, 80)
  end

  def test_part_2_short_256_days
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, SHORT_FILE)
    day = CLASS.new
    assert_equal 26984457539, day.part_2(file_name, 256)
  end

  def test_part_2
    skip
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, LONG_FILE)
    day = CLASS.new
    assert_equal -1, day.part_2(file_name, 256)
  end
end
