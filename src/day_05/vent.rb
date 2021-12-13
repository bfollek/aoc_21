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
      steppe = y_start <= y_end ? 1 : -1
      ys = (y_start..y_end).step(steppe)
      ys.map { |y| [x_start, y] }
    elsif y_start == y_end
      steppe = x_start <= x_end ? 1 : -1
      xs = (x_start..x_end).step(steppe)
      xs.map { |x| [x, y_start] }
    else # diagonal
      x_steppe = x_start <= x_end ? 1 : -1
      y_steppe = y_start <= y_end ? 1 : -1
      xs = (x_start..x_end).step(x_steppe)
      ys = (y_start..y_end).step(y_steppe)
      xs.zip(ys)
    end
  end
end
