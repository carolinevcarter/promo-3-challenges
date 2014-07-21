require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  bank = bank_score
  score = pick_card
  while (asking_for_card?(score))
    score += pick_card
    state_of_the_game(score, bank)
  end
  build_message_for(game_outcome(bank, score))
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  return "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  puts "Score is #{score}. Do you want to pick another card ? Y/yes"
  answer = gets.chomp
  if answer == "yes" or answer == "Y"
    return true
  else
    return false
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    "You are over 21... you loose."
  elsif outcome[1] == 21
    "Black Jack!"
  elsif outcome[1] > outcome[0]
    "You beat the bank! You win."
  else
    "Bank beats you! You loose."
  end
end