class Day06
  # "How many lanternfish would there be after 80 days?"
  def part_1(file_name, days)
    population = File.read(file_name, chomp: true).split(",").map &:to_i
    simulate population, days
    population.size
  end

  def part_2(file_name, days)
    -1
  end

  # -----------------------------------------------------------------
  private

  # "Each day, a 0 becomes a 6 and adds a new 8 to the end of the list, while each other number decreases by 1 if it was present at the start of the day."
  def simulate(population, days)
    days.times do
      new_fish = []
      population.each_index do |i|
        if population[i] == 0
          population[i] = 6
          new_fish << 8
        else
          population[i] -= 1
        end
      end
      # Using += gets us a new array reference, and we have to return `population` explicitly.
      # Appending seems more natural.
      new_fish.each { |nf| population << nf }
    end
  end

  def debug(msg)
    puts msg
  end
end
