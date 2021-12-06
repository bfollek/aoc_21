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
    assert_equal 1975421260, day_02.part_2(file_name)
  end

  def test_unknown_move
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_02_unknown_move.txt")
    day_02 = Day02.new
    ex = assert_raises(StandardError) do
      assert_equal -1, day_02.part_2(file_name)
    end
    assert_match(/unknown move/i, ex.message)
  end
end
