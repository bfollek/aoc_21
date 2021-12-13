require_relative "./vent"

class Day05
  def part_1(file_name)
    h = Hash.new(0)
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      v = Vent.new line
      next if v.diagonal?
      v.points.each { |p| h[p] += 1 }
    end
    h.values.filter { |e| e > 1 }.size
  end

  def part_2(file_name)
    h = Hash.new(0)
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      v = Vent.new line
      v.points.each { |p| h[p] += 1 }
    end
    h.values.filter { |e| e > 1 }.size
  end

  # -----------------------------------------------------------------
  private

  def diagonal?(line)
  end
end
