require "set"
require_relative "./board"

class Bingo
  def initialize(file_name)
    lines = File.readlines(file_name, chomp: true)
    @numbers = lines[0].split(",").map &:to_i
    # Skip the `numbers` line, and remove blank lines.
    lines = lines[(1..)].filter { |bl| !bl.empty? }
    @boards = lines_to_boards(lines)
  end

  def play_to_win
    @numbers.each do |n|
      @boards.each do |b|
        next unless b.numbers.include?(n)
        winner, score = b.mark_number(n)
        if winner
          return score
        end
      end
    end
    raise StandardError, "No winner! Sad."
  end

  # Find the board that comes in last, not first.
  def play_to_lose
    winners = Set[]
    @numbers.each do |n|
      @boards.each do |b|
        next if winners.include? b.object_id # Skip board that's already a winner.
        next unless b.numbers.include? n
        winner, score = b.mark_number(n)
        if winner
          winners << b.object_id
          if winners.size == @boards.size
            return score
          end
        end
      end
    end
    raise StandardError, "No winner! Sad."
  end

  # -----------------------------------------------------------------
  private

  def lines_to_boards(lines)
    if lines.size % Board::BOARD_LINES != 0
      raise ArgumentError, "Wrong number of board lines: #{lines.size}"
    end
    # `lines` is an array of strings, e.g. ["22 13 17 11  0",...," 2  0 12  3  7"]
    # Convert it to `int_lines`, an array of int arrays: [ [22, 13, 17, 11, 0],...]
    int_lines = lines.map { |line| line.split.map &:to_i }
    # Slice `int_lines` into board-sized subarrays. Each
    # subarray has the numbers for one board.
    slices = int_lines.each_slice(Board::BOARD_LINES)
    slices.map { |subarray| Board.new(subarray) }
  end
end
