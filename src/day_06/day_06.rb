class Day06
  NUM_SLOTS = 9

  # "How many lanternfish would there be after 80 days?"
  def part_1(file_name, days)
    population = File.read(file_name, chomp: true).split(",").map &:to_i
    population_by_due_date = simulate_fast population, days
    population_by_due_date.sum
  end

  def part_2(file_name, days)
    part_1(file_name, days)
  end

  # -----------------------------------------------------------------
  private

  def simulate_fast(population, days)
    # "Each day, a 0 becomes a 6 and adds a new 8 to the end of the list, while each other number decreases by 1 if it was present at the start of the day."
    # So a fish can have a due date of 0 to 8 days. Use `population_by_due_date` to count the number of fish with each due date.
    population_by_due_date = [0] * NUM_SLOTS
    population.each do |fish|
      population_by_due_date[fish] += 1
    end
    #debug "starting population_by_due_date: #{population_by_due_date}"
    days.times do
      tmp = population_by_due_date[0]
      # Shift each slot down
      (0..NUM_SLOTS - 2).each do |i|
        population_by_due_date[i] = population_by_due_date[i + 1]
      end
      population_by_due_date[6] += tmp # Births
      population_by_due_date[NUM_SLOTS - 1] = tmp
    end
    population_by_due_date
  end

  def debug(msg)
    puts msg
  end
end
