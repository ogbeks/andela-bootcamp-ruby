def scoreHand (card_array)
  card_unace_bank = []
  card_ace_bank = []
  card_score_array =[]
  card_array.each do |card|
  if card.to_i != 0
    card_unace_bank << card.to_i
  elsif (card =="J" || card=="K" || card=="Q")
    card_unace_bank << 10
  elsif (card == "A")
    card_ace_bank << card
  end
end
sum_of_not_ace = card_unace_bank.reduce(0) do |sum, card|
  sum += card
end
card_score_array =card_unace_bank + card_ace_bank
num_of_ace = card_ace_bank.size
card_score_array.reduce(0) do |sum, card|
  if card =="A"
    if sum >= 21
      sum +=1
    else
      if sum + 11 > 21
        sum +=1
      elsif sum + 11== 21 && num_of_ace>1
        sum +=1
      else
        sum+=11
      end
    end
else
  sum + card
end
end
end
