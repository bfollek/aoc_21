class Day05
  def part_1(file_name)
    points = Hash.new(0)
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      v = Vent.new line
      next if v.diagonal?
      puts line
    end
    -1
  end

  def part_2(file_name)
    -1
  end

  # -----------------------------------------------------------------
  private

  def diagonal?(line)
  end
end
