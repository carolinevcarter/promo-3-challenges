require_relative "coach_answer"

puts  "Ask your coach a question!"
answer = gets.chomp

until answer == "I am going to work right now SIR !"
	puts coach_answer(answer)
	answer = gets.chomp
	
end
puts coach_answer(answer)
#TODO: Implement the program that makes you discuss with your coach from the terminal.

