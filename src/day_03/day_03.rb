require_relative "./common_bits"

class Day03
  def part_1(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    most_common, least_common = CommonBits.count(diagnostics)
    gamma = from_binary(most_common)
    epsilon = from_binary(least_common)
    gamma * epsilon
  end

  def part_2(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    oxy = filtered_rating(diagnostics, true)
    co2 = filtered_rating(diagnostics, false)
    oxy * co2
  end

  # -----------------------------------------------------------------
  private

  def filtered_rating(diagnostics, use_most_common)
    while diagnostics.size > 1
      most_common, least_common = CommonBits.count(diagnostics)
      filter_bits = use_most_common ? most_common : least_common
      filter_bits.each_with_index do |fb, i|
        puts "diagnostics.size: #{diagnostics.size}"
        diagnostics = diagnostics.filter { |d| d[i] == fb }
        if diagnostics.size <= 1
          break
        end
      end
    end
    diagnostics[0]
  end

  # `a` is an array of binary digits as strings, e.g. ["1", "0", "1", "1", "0"]
  def from_binary(a)
    a.join.to_i(2)
  end
end
