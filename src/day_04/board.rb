class Board
  BOARD_LINES = 5

  def initialize(array_of_strings)
    # Input example: ["22 13 17 11  0",...," 2  0 12  3  7"]
    # Convert it to an array of rows. Each row is an array of hashes,
    # e.g. "22 13 17 11  0" becomes ["22" => false, "13" => false...]
    # We use the booleans to track hits.
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
end

# Now, for each board subarray, convert "22 13 17 11  0" to an array of hashes, e.g.
# ["22" => false, "13" => false...] etc., so that we can easily track hits. Also,
# build a set of the numbers on the board, for quick lookups.
#boards = []
#slices.each do |subarray|
#  subarray
#end
# " 7 92 80 69 61" => ["7", "92", "80", "69", "61"]
#lines = lines.map &:split
