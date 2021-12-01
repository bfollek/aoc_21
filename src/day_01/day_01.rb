class Day01
  # "How many measurements are larger than the previous measurement?"
  def part_1(file_name)
    lines = File.readlines(file_name, chomp: true).map &:to_i
    cnt = 0
    prev = lines[0] + 1 # So the first line doesn't bump `cnt`
    lines.each do |line|
      if line > prev
        cnt += 1
      end
      prev = line
    end
    cnt
  end

  # Consider sums of a three-measurement sliding window. How many sums are larger than the previous sum?
  def part_2(file_name)
    lines = File.readlines(file_name, chomp: true).map &:to_i
    windows = lines.each_cons(3).to_a.map &:sum
    cnt = 0
    prev = windows[0] + 1 # So the first window doesn't bump `cnt`
    windows.each do |window|
      if window > prev
        cnt += 1
      end
      prev = window
    end
    cnt
  end
end
