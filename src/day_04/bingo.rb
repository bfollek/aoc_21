require_relative "./board"

class Bingo
  attr_reader :numbers
  attr_accessor :boards

  def initialize(numbers, board_lines)
    @numbers = numbers
    @boards = board_lines_to_boards(board_lines)
  end

  def self.load_file(file_name)
    game = File.readlines(file_name, chomp: true)
    numbers = game[0].split(",")
    board_lines = game[(2..)] # Skip the `numbers` line and the blank line following it.
    self.new numbers, board_lines.filter { |bl| !bl.empty? }  # Remove blank lines.
  end

  # -----------------------------------------------------------------
  private

  def board_lines_to_boards(lines)
    if lines.size % Board::BOARD_LINES != 0
      raise ArgumentError, "Wrong number of board lines: #{lines.size}"
    end
    # `lines` is an array of strings, e.g. ["22 13 17 11  0",...," 2  0 12  3  7"]
    # Slice the `lines` into board-sized subarrays. Each subarray has the strings
    # for one board.
    slices = lines.each_slice(Board::BOARD_LINES).to_a
    # Convert each subarray into a board.
    boards = []
    slices.each do |subarray|
      boards << Board.new(subarray)
    end
    boards
  end
end
