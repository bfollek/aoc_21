class Move
  attr_reader :direction, :distance

  def initialize(direction, distance)
    @direction = direction
    @distance = distance
  end

  def self.load_file(file_name)
    # e.g., "forward 7", "up 3", "down 22"
    re = Regexp.new("(#{Position::FORWARD}|#{Position::UP}|#{Position::DOWN}) " +
                    '(\d+)') # Single quotes, so no need to escape backslash
    moves = []
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      m = line.match re
      if m
        moves << self.new(m[1], m[2].to_i)
      else
        raise "Unknown move: #{line}"
      end
    end
    moves
  end
end
