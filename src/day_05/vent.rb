class Vent
  # 0,9 -> 5,9
  RE = /\A(\d+),(\d+) -> (\d)+,(\d+)\Z/

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
  end
end
