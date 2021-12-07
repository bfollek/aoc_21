require_relative "./common_bits"

class Day03
  def part_1(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    most_common, least_common = CommonBits.count(diagnostics)
    gamma = string_array_to_binary(most_common)
    epsilon = string_array_to_binary(least_common)
    gamma * epsilon
  end

  def part_2(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    oxy = filtered_rating(diagnostics, true)
    co2 = filtered_rating(diagnostics, false)
    oxy.to_i(2) * co2.to_i(2)
  end

  # -----------------------------------------------------------------
  private

  def filtered_rating(diagnostics, use_most_common)
    (0...diagnostics[0].size).each do |i|
      if diagnostics.size <= 1
        break
      end
      most_common, least_common = CommonBits.count(diagnostics)
      filter_bits = use_most_common ? most_common : least_common
      diagnostics = diagnostics.filter { |d| d[i] == filter_bits[i] }
    end
    diagnostics[0]
  end

  # `a` is an array of binary digits as strings, e.g. ["1", "0", "1", "1", "0"]
  def string_array_to_binary(a)
    a.join.to_i(2)
  end
end
