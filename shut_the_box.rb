=begin
Bob plays a single-player game of chance using two standard 6-sided dice and twelve cards numbered 1 to 12. When the game starts, all cards are placed face up on a table.

Each turn, Bob rolls both dice, getting numbers x and y respectively, each in the range 1,...,6. He must choose amongst three options: turn over card x, card y, or card x+y. (If the chosen card is already face down, it is turned to face up, and vice versa.)

If Bob manages to have all twelve cards face down at the same time, he wins.

Alice plays a similar game, except that instead of dice she uses two fair coins, counting heads as 2 and tails as 1, and that she uses four cards instead of twelve. Alice finds that, with the optimal strategy for her game, the expected number of turns taken until she wins is approximately 5.673651.

Assuming that Bob plays with an optimal strategy, what is the expected number of turns taken until he wins? Give your answer rounded to 6 places after the decimal point.
=end

# Bob
class Card
  
  def init(value, probability)
    :value = nil
    :up = true
    :probability = nil
  end

  def chosen
    up = false
  end

end

class Game
  cards = []
  def init
    probability = [7,8,8,9,9,10,3,3,2,2,1,1]
    1..12.loop do |card|
      cards << Card.new(card, probability[card-1])
    end
  end

  #check is all ups are false
  def end_game?
    cards.each do |card|
      return false if card.up == true
    end
    true
  end

  def lowest_prob(d1, d2, combo)
    cards.each do |card|
      card_1 = card if d1 == card.value
      card_2 = card if d2 == card.value
      card_3 = card if combo == card.value
    end
    

    

  def play
    turns_count = 0
    while end_game? == false
      die_1 = rand(1..6)
      die_2 = rand(1..6)
      # find card with lowest probablity
      flip_card(lowest_prob(die_1, die_2, die_1 + die_2))
      turns_count += 1
    end
  end
