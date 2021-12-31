# aoc_21

Advent of Code 2021 in ruby.

## Running Tests

Run one day:

```bash
bundle exec ruby test/test_day_01.rb
```

Run all tests:

```bash
rake
```

## Days

### Day 1 - Done. 

#### Remember

Several Enumerable methods:
* `with_index` - Gives you an index for methods like `filter` and `map`, so that you can work with other elements in an array; 
* `each_cons` - cons == consecutive. Handy for things like sliding windows;
* `filter_map` - filter and map in one go. I didn't use this, but good to know about. 

### Day 2 - Done.

#### Remember

* Regexp - How to build it from a string, so that you can substitute constants.

### Day 3 - Done.

### Day 4 - Done.

#### Remember

* Keeping two 2D arrays in sync as a clean way to handle game board state.
* DRYing up code with a method that takes a block.

### Day 5 - Done.

#### Remember

* Using a hash where a 2D array might seem obvious, but would kill performance.
* Fun with ranges and the `step` method.

### Day 6 - Done.

I needed an algorithm hint from the subreddit for part 2.

#### Remember

* If a method appends to an array, the reference doesn't change, and the caller will see the new element. But if a method concatenates arrays (+=), the reference changes, and the caller won't see it unless the method returns the array and the caller rebinds it.

### Day 7 - Done.

I benchmarked an easy optimization of the fuel calculation: break out of the loop through the crabs hash when we know the position we're testing isn't an improvement. It makes about a 50% difference:

```
                      user     system      total        real
calc              0.293204   0.003312   0.296516 (  0.300539)
calc_with_break   0.147859   0.001517   0.149376 (  0.151098)
```

Other than that, I used a straight ahead brute force approach. I thought part 2 might require caching the sums to get decent performance for the full file. But the brute force approach worked fine.

#### Remember

* Another good example of `yield` and a block to DRY up code.
* `downto` when you want to iterate from higher to lower, e.g. `16.downto(5).each {|i| puts i}`. (Though I didn't end up using this in the code.)