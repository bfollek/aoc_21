class Day07
  def part_1(file_name)
    input = File.read(file_name, chomp: true).split(",").map &:to_i
    crabs = Hash.new(0)
    input.each { |i| crabs[i] += 1 }
    #puts crabs
    min_pos = crabs.keys.min
    max_pos = crabs.keys.max
    #puts min_pos, max_pos
    lowest_fuel = nil
    (min_pos..max_pos).each do |pos|
      fuel = calc_fuel(pos, crabs)
      if lowest_fuel.nil? || lowest_fuel > fuel
        lowest_fuel = fuel
      end
    end
    lowest_fuel
  end

  def part_2(file_name)
  end

  # -----------------------------------------------------------------
  private

  def calc_fuel(pos, crabs)
    fuel = 0
    crabs.each_pair { |crab_pos, num_crabs| fuel += (crab_pos - pos) * num_crabs }
    fuel
  end
end
