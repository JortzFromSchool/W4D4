require "card.rb"

class Deck

    attr_reader :array

    def initialize
        @array = []
        self.populate_deck
        @array.sort!
    end

    SUITS = [:diamonds, :clubs, :hearts, :spades]

    def populate_deck
        i = 0
        SUITS.each do |suit|
            (1..13).to_a.each do |value|
                @array << Card.new(suit, value, i)
                i += 1
            end
        end
    end

    def shuffle
        @array.shuffle
    end

    def draw
        @array.pop
    end



end