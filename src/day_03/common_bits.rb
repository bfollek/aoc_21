class CommonBits
  attr_reader :most_common, :least_common

  def initialize
    @most_common = []
    @least_common = []
  end

  def count(diagnostics)
    counters = [0] * diagnostics[0].size
    diagnostics.each do |d|
      d.each_char.with_index do |c, i|
        counters[i] += c.to_i
      end
    end
    counters.each do |cnt|
      m, l = cnt >= (diagnostics.size / 2) ? ["1", "0"] : ["0", "1"]
      @most_common << m
      @least_common << l
    end
  end
end
