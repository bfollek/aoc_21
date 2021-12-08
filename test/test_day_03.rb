require "minitest/autorun"

require_relative "../src/day_03/day_03"

class Day03Test < Minitest::Test
  def test_common_bits_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03_short.txt")
    diagnostics = File.readlines(file_name, chomp: true)
    most_common, least_common = Day03.new.send("count_common_bits", diagnostics)
    assert_equal ["1", "0", "1", "1", "0"], most_common
    assert_equal ["0", "1", "0", "0", "1"], least_common
  end

  def test_most_common_second_bit
    diagnostics = ["11110", "10110", "10111", "10101", "11100", "10000", "11001"]
    most_common, least_common = Day03.new.send("count_common_bits", diagnostics)
    assert_equal "0", most_common[1]
  end

  def test_part_1
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03.txt")
    day_03 = Day03.new
    assert_equal 2640986, day_03.part_1(file_name)
  end

  def test_part_2_short
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03_short.txt")
    day_03 = Day03.new
    assert_equal 230, day_03.part_2(file_name)
  end

  def test_part_2
    dir = File.dirname(__FILE__)
    file_name = File.join(dir, "../data/day_03.txt")
    day_03 = Day03.new
    assert_equal 6822109, day_03.part_2(file_name)
  end
end
