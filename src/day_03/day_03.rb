require_relative "./common_bits"

class Day03
  def part_1(file_name)
    diagnostics = File.readlines(file_name, chomp: true)
    cb = CommonBits.new
    cb.count(diagnostics)
    gamma_rate = from_binary(cb.most_common)
    epsilon_rate = from_binary(cb.least_common)
    gamma_rate * epsilon_rate
  end

  def part_2(file_name)
    return -1
  end

  # -----------------------------------------------------------------
  private

  # `a` is an array of binary digits as strings, e.g. ["1", "0", "1", "1", "0"]
  def from_binary(a)
    a.join.to_i(2)
  end
end
