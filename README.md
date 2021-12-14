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