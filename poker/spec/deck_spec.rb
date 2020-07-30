require "deck"

describe Deck do
   subject(:deck) {Deck.new}
#  let(:card) { double("card")}

   describe "#initialize" do
      it "creates an array of 52 cards" do
         expect(deck.instance_variable_get(:@cards).size).to eq(52)
         expect(deck.instance_variable_get(:@cards).first).to be_instance_of(Card)
      end
   end
   
end


#deck.include? tell you if a card is in the deck

#deck.deal: shuffles the deck and pops cards off one at a time to a specified amount of hands

# expect(Mastermind.new(4).instance_variable_get(:@secret_code)).to be_instance_of(Code)