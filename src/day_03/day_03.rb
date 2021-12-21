class Day03
  MOST_COMMON = 1
  LEAST_COMMON = 0

  def part_1(file_name)
    diagnostics = load_diagnostics(file_name)
    most_common, least_common = count_common_bits(diagnostics)
    gamma = bit_array_to_number(most_common)
    epsilon = bit_array_to_number(least_common)
    gamma * epsilon
  end

  def part_2(file_name)
    diagnostics = load_diagnostics(file_name)
    oxygen = bit_array_to_number(filter_rating(diagnostics, MOST_COMMON))
    co2 = bit_array_to_number(filter_rating(diagnostics, LEAST_COMMON))
    oxygen * co2
  end

  # -----------------------------------------------------------------
  private

  def load_diagnostics(file_name)
    lines = File.readlines(file_name, chomp: true)
    lines.map { |line| line.split("").map &:to_i }
  end

  def count_common_bits(diagnostics)
    counters = diagnostics.transpose.map &:sum
    most_common = []
    least_common = []
    counters.each do |cnt|
      m, l = cnt >= (diagnostics.size / 2.0) ? [1, 0] : [0, 1]
      most_common << m
      least_common << l
    end
    [most_common, least_common]
  end

  def filter_rating(diagnostics, most_common_or_least)
    (0...diagnostics[0].size).each do |i|
      if diagnostics.size <= 1
        break
      end
      most_common, least_common = count_common_bits(diagnostics)
      filter_bits = most_common_or_least == MOST_COMMON ? most_common : least_common
      diagnostics = diagnostics.filter { |d| d[i] == filter_bits[i] }
    end
    diagnostics[0]
  end

  def bit_array_to_number(bits)
    bits.map { |bit| bit.to_s }.join.to_i(2)
  end
end
