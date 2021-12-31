require "benchmark"

require_relative "../src/day_07/day_07"

dir = File.dirname(__FILE__)
file_name = File.join(dir, "../data/day_07.txt")
day_07 = Day07.new
Benchmark.bmbm do |x|
  x.report("calc") { day_07.part_2(file_name) }
  x.report("calc_with_break") { day_07.part_2_with_break(file_name) }
end
