require_relative "../euler_project/shut_the_box.rb"

RSpec.describe Game, "lowest_prob" do
  context "After throwing the dice" do
    it "chooses the card with the lowest probability" do
      game = Game.new
      card = game.cards[0]
      expect(game.lowest_prob(1,2,3)).to eq card
    end
  end
end


RSpec.describe Game, "#flip_card" do
  context "when a card has been chosen" do
    it "changes the cards up value to false" do
      game = Game.new
      card = game.cards[0]
      expect(card.up).to be true
      game.flip_card(card)
      expect(card.up).to be false
    end
  end
end

RSpec.describe Game, "#end_game" do
  context "when playing the game" do
    it "checks if all the cards are turned over" do
      game = Game.new
      expect(game.end_game?).to be false
      game.cards.each do |card|
        flip_card(card)
      end
      expect(game.end_game?).to be true
    end
  end
end
