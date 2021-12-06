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
      @most_common << (cnt >= (diagnostics.size / 2) ? "1" : "0")
    end
    @most_common.each do |mc|
      @least_common << (mc == "1" ? "0" : "1")
    end
  end
end
