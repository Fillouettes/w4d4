class Deck

    def initialize
        @cards = []
        @size = 52
        @suits = ["Diamonds", "Clubs", "Hearts", "Spades" ]
        @values = ("2".."10").to_a + ["Jack", "Queen", "King", "Ace"]
        @suits.each do |suit|
            @values.each do |value|
                @cards << Card.new(value, suit)
            end
        end
        
    end
    
end