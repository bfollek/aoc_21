require "minitest/autorun"

require_relative "../src/day_02/day_02"

class Day02Test < Minitest::Test
  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_02.txt")
    day_02 = Day02.new
    assert_equal 1990000, day_02.part_1(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_02.txt")
    day_02 = Day02.new
    assert_nil day_02.part_2(file_name)
  end
end
