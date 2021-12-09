class Board
  BOARD_LINES = 5
  BOARD_COLS = BOARD_LINES # Boards are square.

  attr_reader :numbers

  def initialize(array_of_strings)
    # Input example: ["22 13 17 11  0",...," 2  0 12  3  7"]
    # Each input string defines a row in the board. Convert it to
    # an array of hashes, e.g. "22 13 17 11  0" becomes
    # ["22" => false, "13" => false...] We use the booleans to track hits.
    #
    # Also, build a set of all the numbers on the board, for quick lookups.
    @numbers = Set[]
    @rows = []
    array_of_strings.each do |s|
      a = s.split
      @numbers += a
      a_hash = a.map { |e| { e => false } }
      @rows << a_hash
    end
  end

  # Assume a number appears only once on a board.
  def hit_number(n)
    @rows.each do |r|
      (0...BOARD_COLS).each do |i|
        key = r[i].keys[0] # Each hash has just one item.
        if key == n
          r[i][key] = true
          if winner?
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

  def winner?
    @rows.each do |r|
      (0...BOARD_COLS).each do |i|
        if r[i].values[0] == false # Each hash has just one item.
          return false
        end
      end
    end
    true
  end

  # "The score of the winning board can now be calculated. Start by finding
  # the sum of all unmarked numbers on that board; in this case, the sum is 188.
  # Then, multiply that sum by the number that was just called when the board won,
  # 24, to get the final score, 188 * 24 = 4512."
  def score(n)
    unmarked = 0
    @rows.each do |r|
      (0...BOARD_COLS).each do |i|
        if r[i].values[0] == false # Each hash has just one item.
          unmarked += r[i].keys[0].to_i
        end
      end
    end
    unmarked * n.to_i
  end
end
