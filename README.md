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

I learned several Enumerable methods:
* with_index - Gives you an index for methods like `filter` and `map`, so that you can work with other elements in an array; 
* each_cons - cons == consecutive. Handy for things like sliding windows;
* filter_map - filter and map in one go. I didn't use this, but good to know about. 

### Day 2 - 