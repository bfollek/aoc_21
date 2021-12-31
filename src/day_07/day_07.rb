class Day07
  def part_1(file_name)
    input = File.read(file_name, chomp: true).split(",").map &:to_i
    crabs = Hash.new(0)
    input.each { |i| crabs[i] += 1 }
    min_pos = crabs.keys.min
    max_pos = crabs.keys.max
    lowest_fuel = nil
    (min_pos..max_pos).each do |pos|
      fuel = calc_fuel_part_1(pos, crabs)
      if lowest_fuel.nil? || lowest_fuel > fuel
        lowest_fuel = fuel
      end
    end
    lowest_fuel
  end

  def part_2(file_name)
    input = File.read(file_name, chomp: true).split(",").map &:to_i
    crabs = Hash.new(0)
    input.each { |i| crabs[i] += 1 }
    min_pos = crabs.keys.min
    max_pos = crabs.keys.max
    lowest_fuel = nil
    (min_pos..max_pos).each do |pos|
      fuel = calc_fuel_part_2(pos, crabs)
      if lowest_fuel.nil? || lowest_fuel > fuel
        lowest_fuel = fuel
      end
    end
    lowest_fuel
  end

  # -----------------------------------------------------------------
  private

  def calc_fuel_part_1(pos, crabs)
    fuel = 0
    crabs.each_pair do |crab_pos, num_crabs|
      distance = (crab_pos - pos).abs
      fuel += distance * num_crabs
    end
    fuel
  end

  def calc_fuel_part_2(pos, crabs)
    fuel = 0
    crabs.each_pair do |crab_pos, num_crabs|
      distance = (crab_pos - pos).abs
      fuel += (1..distance).sum * num_crabs
    end
    fuel
  end
end
