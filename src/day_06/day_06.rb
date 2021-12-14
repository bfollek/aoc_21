class Day06
  # "How many lanternfish would there be after 80 days?"
  def part_1(file_name, days)
    population = File.read(file_name, chomp: true).split(",").map &:to_i
    simulate population, days
    population.size
  end

  def part_2(file_name, days)
    population = File.read(file_name, chomp: true).split(",").map &:to_i
    population_by_due_date = simulate_fast population, days
    population_by_due_date.sum
  end

  # -----------------------------------------------------------------
  private

  def simulate_fast(population, days)
    # A fish can have a due date of 0 to 8 days.
    # Count the number of fish with each due date.
    population_by_due_date = [0] * 9
    population.each do |fish|
      population_by_due_date[fish] += 1
    end
    #debug "starting population_by_due_date: #{population_by_due_date}"
    days.times do
      tmp = population_by_due_date[0]
      population_by_due_date[0] = population_by_due_date[1]
      population_by_due_date[1] = population_by_due_date[2]
      population_by_due_date[2] = population_by_due_date[3]
      population_by_due_date[3] = population_by_due_date[4]
      population_by_due_date[4] = population_by_due_date[5]
      population_by_due_date[5] = population_by_due_date[6]
      population_by_due_date[6] = population_by_due_date[7] + tmp
      population_by_due_date[7] = population_by_due_date[8]
      population_by_due_date[8] = tmp
    end
    population_by_due_date
  end

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
