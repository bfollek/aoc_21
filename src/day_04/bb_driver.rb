# To run this: byebug day_04.rb "../../data/day_04.txt"

dir = File.dirname(__FILE__)
file_name = File.join(dir, ARGV[0])
day_04 = Day04.new
puts "part 1: #{day_04.part_1(file_name)}"
puts "part 2: #{day_04.part_2(file_name)}"
