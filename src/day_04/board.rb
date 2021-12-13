require "set"

class Board
  BOARD_LINES = 5
  BOARD_COLS = BOARD_LINES # Boards are square.

  attr_reader :numbers, :rows

  def initialize(array_of_int_arrays)
    # A 2D array of the numbers on the board.
    @data = array_of_int_arrays
    # A 2D array of booleans, one for each number on the board. true when the
    # number in @data has been called. All false to start.
    @marked = Array.new(@data.size) { Array.new(@data[0].size, false) }
    # A set of all the numbers on the board, for quick lookups.
    @numbers = @data.flatten.to_set
  end

  # Assume a number appears only once on a board.
  def mark_number(n)
    @data.each_index do |i|
      @data[0].each_index do |j|
        if @data[i][j] == n
          @marked[i][j] = true
          if winner?(i, j)
            return [true, score(n)]
          else
            return [false, nil]
          end
        end
      end
    end
  end

  # -----------------------------------------------------------------
  private

  # We know which row and column we changed. If either is all true,
  # the board is a winner.
  def winner?(row, col)
    # Check the row
    row_wins = true
    @data[row].each_index do |i|
      if @marked[row][i] == false
        row_wins = false
        break
      end
    end
    return true if row_wins
    # Check the column
    col_wins = true
    @data.each_index do |i|
      if @marked[i][col] == false #
        col_wins = false
        break
      end
    end
    col_wins
  end

  # "The score of the winning board can now be calculated. Start by finding
  # the sum of all unmarked numbers on that board; in this case, the sum is 188.
  # Then, multiply that sum by the number that was just called when the board won,
  # 24, to get the final score, 188 * 24 = 4512."
  def score(n)
    unmarked = 0
    @data.each_index do |i|
      @data[0].each_index do |j|
        if @marked[i][j] == false
          unmarked += @data[i][j]
        end
      end
    end
    unmarked * n
  end
end
