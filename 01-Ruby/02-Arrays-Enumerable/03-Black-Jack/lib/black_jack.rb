def bank_score
  r = Random.new
  return r.rand(16...22)
end

def pick_card
  r = Random.new
  return r.rand(1...12)
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  return [bank, score]
end
