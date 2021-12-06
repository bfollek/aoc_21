class Move
  FORWARD = "forward"
  UP = "up"
  DOWN = "down"

  attr_reader :direction, :distance

  def initialize(direction, distance)
    @direction = direction
    @distance = distance
  end

  def self.load_file(file_name)
    re = /(#{FORWARD}|#{UP}|#{DOWN}) (\d)+/
    moves = []
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      m = line.match re
      if m
        moves << self.new(m[1], m[2].to_i)
      else
        raise StandardError, "Unknown move: #{line}"
      end
    end
    moves
  end
end
