class Day01
  # "How many measurements are larger than the previous measurement?"
  def part_1(file_name)
    prev = nil
    cnt = 0
    lines = File.readlines(file_name, chomp: true).map &:to_i
    lines.each do |line|
      if prev && line > prev
        cnt += 1
      end
      prev = line
    end
    cnt
  end

  # Consider sums of a three-measurement sliding window. How many sums are larger than the previous sum?
  def part_2(file_name)
    prev = nil
    cnt = 0
    lines = File.readlines(file_name, chomp: true).map &:to_i
    windows = lines.each_cons(3).to_a.map &:sum
    windows.each do |window|
      if prev && window > prev
        cnt += 1
      end
      prev = window
    end
    cnt
  end
end
