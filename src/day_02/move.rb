class Move
  attr_reader :direction, :distance

  def initialize(direction, distance)
    @direction = direction
    @distance = distance
  end

  def self.load_file(file_name)
    moves = []
    lines = File.readlines(file_name, chomp: true)
    lines.each do |line|
      m = line.match /(forward|up|down) (\d+)/
      if m
        moves << self.new(m[1], m[2].to_i)
      else
        raise "Unknown move: #{line}"
      end
    end
    moves
  end
end
