require_relative "./common_bits"

MOST_COMMON = 1
LEAST_COMMON = 0

class Day03
  def part_1(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    most_common, least_common = CommonBits.count(diagnostics)
    gamma = most_common.join.to_i(2)
    epsilon = least_common.join.to_i(2)
    gamma * epsilon
  end

  def part_2(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    oxygen = filter_rating(diagnostics, MOST_COMMON).to_i(2)
    co2 = filter_rating(diagnostics, LEAST_COMMON).to_i(2)
    oxygen * co2
  end

  # -----------------------------------------------------------------
  private

  def filter_rating(diagnostics, most_common_or_least)
    (0...diagnostics[0].size).each do |i|
      if diagnostics.size <= 1
        break
      end
      most_common, least_common = CommonBits.count(diagnostics)
      filter_bits = most_common_or_least == MOST_COMMON ? most_common : least_common
      diagnostics = diagnostics.filter { |d| d[i] == filter_bits[i] }
    end
    diagnostics[0]
  end
end
