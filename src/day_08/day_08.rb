class Day08
  # number => unique number of segments
  UNIQUE_NUMBERS = { 1 => 2, 4 => 4, 7 => 3, 8 => 7 }.freeze

  # "In the output values, how many times do digits 1, 4, 7, or 8 appear?"
  def part_1(file_name)
    re = /.*\| (.*)/
    cnt = 0
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      m = line.match re
      if m
        outputs = m[1].split(" ")
        cnt += outputs
          .filter { |output| UNIQUE_NUMBERS.values.include? output.size }
          .size
      else
        raise StandardError, "No outputs: #{line}"
      end
    end
    cnt
  end

  def part_2(file_name)
    input = File.read(file_name, chomp: true).split(",").map &:to_i
    -1
  end

  # -----------------------------------------------------------------
  private
end
