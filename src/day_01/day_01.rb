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
end
