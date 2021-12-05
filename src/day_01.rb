class Day01
  # "How many measurements are larger than the previous measurement?"
  def part_1(file_name)
    lines = File.readlines(file_name, chomp: true).map &:to_i
    count_larger lines
  end

  # Consider sums of a three-measurement sliding window. How many sums are larger than the previous sum?
  def part_2(file_name)
    lines = File.readlines(file_name, chomp: true).map &:to_i
    windows = lines.each_cons(3).to_a.map &:sum
    count_larger windows
  end

  # -----------------------------------------------------------------
  private

  def count_larger(ary)
    ary
      .filter.with_index { |nxt, i| i > 0 && nxt > ary[i - 1] }
      .size
  end
end
