require "towers_of_hanoi"

describe Hanoi do
    subject(:game) { Hanoi.new(3) }

    describe '#initialize' do 
        it "takes in an optional number" do
            expect(Hanoi.new).to_not raise_error
        end

        it "creates a new game of chosen size" do 
            expect(Hanoi.new(4).size).to eq(4)
        end
    end


    describe "#move" do
       
    end
    
    describe "won?" do
       
    end
end