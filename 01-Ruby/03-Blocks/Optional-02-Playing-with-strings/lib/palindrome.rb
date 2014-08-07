  #TODO: check if a_string is a palindrome
def palindrome?(a_string)
  if string.length == 1 || string.length ==
    true
  else
    if string [0] == string[-1]
      palindrome?(string[1..-2])
    else
      false
    end
  end
end


# Testing palindrome? function
puts "#{palindrome?("A man, a plan, a canal -- Panama")}" #=> true
puts "#{palindrome?("Madam, I'm Adam!")}" # => true
puts "#{palindrome?("Abracadabra")}" # => false