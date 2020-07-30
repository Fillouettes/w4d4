class Card 
   attr_reader :value, :suit

   SUITS = ["Diamonds", "Clubs", "Hearts", "Spades" ]
   VALUES = ("2".."10").to_a + ["Jack", "Queen", "King", "Ace"]

    def initialize(value, suit)
      raise ArgumentError if !SUITS.include?(suit)
      raise ArgumentError if !VALUES.include?(value)
      @value = value 
      @suit = suit
    end

    def inspect
      [value, suit]
    end
end