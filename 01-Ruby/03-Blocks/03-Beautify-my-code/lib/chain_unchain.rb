def shuffle_word(a_word)
  a_word.upcase.chars.to_a.shuffle
end
#Refractor

def quote_prime_numbers(n)
  #TODO: refactor this method
  prime_numbers = (1..n).find_all do |i|
    selector =  (2..i - 1).select {|k| i % k == 0 }
    selector.count == 0
    # k correspondent à tous les nombres entre 2 et i-1 pour vérifier qu'il n'est pas divisible.
  end
  prime_numbers.map { |prime_num| "#{prime_num} is prime" }
end


  #TODO: refactor this method