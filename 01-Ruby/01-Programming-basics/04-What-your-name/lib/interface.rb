require_relative "compute_name"
def ask_and_get(param)
	puts "What #{param}"
return gets.chomp 
  #TODO:
  #- Ask the user to write a value for param
  #- Get and return the string inputted by the user
end

def name_from_terminal
  first_name = ask_and_get("first name")
  second_name = ask_and_get("middle name")
  last_name = ask_and_get("last name")

  compute_name(first_name, second_name, last_name)
end



full_name = name_from_terminal

def custom_message(paramm)
	"This is your #{paramm.length}"


	
end

#TODO: use string concatenation to build a custom message embedding the computed full_name

# custom_message = 

puts custom_message(full_name)
puts "hello" + full_name

