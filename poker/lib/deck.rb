class Deck

    attr_reader :array

    def initialize
        @array = []
        self.populate_deck
        @array.sort!
    end

    SUITS = [:hearts, :spades, :clubs, :diamonds]
    
    def populate_deck
        i = 0
        SUITS.each do |suit|
            (1..13).to_a.each do |value|
                @array << Card.new(suit, value, i)
                i += 1 
            end
        end
    end


end