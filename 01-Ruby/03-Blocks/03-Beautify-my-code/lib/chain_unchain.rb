def shuffle_word(a_word)

  a_word.upcase.chars.to_ar.shuffle
end
  #TODO: refactor this method

def quote_prime_numbers(n)

  (1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}
end

  #TODO: refactor this method