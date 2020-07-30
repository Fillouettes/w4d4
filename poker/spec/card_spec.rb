require "card"

describe Card do
   subject(:card) {Card.new("2", "Diamonds")}

   describe "#initialize" do 

      it "creates a new card" do 
         expect{ Card.new("2", "Diamonds") }.to_not raise_error
         test = Card.new("3", "Spades")
         expect(test).to be_instance_of(Card)
      end
   
      it "sets a suit" do
         expect(card.suit).to eq("Diamonds")
      end
      
      it "sets a value" do
         expect(card.value).to eq("2")
      end

      it "only creates cards with valid values" do
         expect{ Card.new("20", "Diamonds") }.to raise_error(ArgumentError)
      end

      it "only creates cards with valid suits" do
         expect{ Card.new("2", "plumbers") }.to raise_error(ArgumentError)
      end
   end
end


# describe Dessert do
#   let(:chef) { double("chef") }
#   subject(:pie) {Dessert.new("pie", 5, chef)}

#   describe "#initialize" do

#     it "sets a type" do
#       expect(pie.type).to eq("pie")
#     end
#     it "sets a quantity" do
#       expect(pie.quantity).to eq(5)
#     end
#     it "starts ingredients as an empty array" do 
#       expect(pie.ingredients).to match_array([])
#     end
#     it "raises an argument error when given a non-integer quantity" do
#       expect { Dessert.new("some", "more", chef) }.to raise_error(ArgumentError)
#     end
#   end