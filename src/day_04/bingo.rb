class Bingo
  LINES_PER_BOARD = 5

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
    if lines.size % LINES_PER_BOARD != 0
      raise ArgumentError, "Wrong number of board lines: #{lines.size}"
    end
    lines
  end
end
