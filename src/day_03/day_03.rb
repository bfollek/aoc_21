class Day03
  MOST_COMMON = 1
  LEAST_COMMON = 0

  def part_1(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    most_common, least_common = count_common_bits(diagnostics)
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

  def count_common_bits(diagnostics)
    counters = [0] * diagnostics[0].size
    diagnostics.each do |d|
      d.each_char.with_index do |c, i|
        counters[i] += c.to_i
      end
    end
    most_common = []
    least_common = []
    counters.each do |cnt|
      m, l = cnt >= (diagnostics.size / 2.0) ? ["1", "0"] : ["0", "1"]
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
end
