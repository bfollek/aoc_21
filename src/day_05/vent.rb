class Vent
  # 0,9 -> 5,9
  RE = /\A(\d+),(\d+) -> (\d+),(\d+)\Z/

  attr_reader :x_start, :y_start, :x_end, :y_end

  def initialize(s)
    m = s.match RE
    if m
      @x_start, @y_start, @x_end, @y_end = m[1..].map &:to_i
    else
      raise StandardError, "Unexpected vent format: #{s}"
    end
  end

  def diagonal?
    return false if x_start == x_end
    return false if y_start == y_end
    true
  end

  def points
    if x_start == x_end
      ys = y_start <= y_end ? (y_start..y_end) : (y_end..y_start)
      ys.map { |y| [x_start, y] }
    elsif y_start == y_end
      xs = x_start <= x_end ? (x_start..x_end) : (x_end..x_start)
      xs.map { |x| [x, y_start] }
    else # diagonal
      xs = x_start <= x_end ? (x_start..x_end) : (x_end..x_start)
      ys = y_start <= y_end ? (y_start..y_end) : (y_end..y_start)
      xs.zip(ys)
    end
  end
end
