def sum_odd_indexed(array)

  sum = 0

  array.each_with_index do |x, index|
    if index.odd?
      sum = sum + x
    else
      sum
    end
  end
  sum
end
 # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
 # You should make use Enumerable#each_with_index

def even_numbers(array)
  array.select do |num|
    num.even?
  end
end

def short_words(array, max_length)
  array.reject do |word|
    word.length > max_length
  end
end


def first_under(array, limit)
  array.find do |num|
    num < limit
  end
end

def add_bang(array)
  array.map do |string|
    "#{string}!"
  end
end

def product(array)
  array.reduce(:*)
end
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce


def sorted_pairs(array)
  new_pairs = []
  array.each_slice(2) do |pairs|
    p pairs
    new_pairs << pairs.sort
  end
  return new_pairs
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
end


