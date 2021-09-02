class Hand

    attr_accessor :cards
    attr_reader :deck

    def initialize(deck)
        @cards = []
        @deck = deck
        self.populate_hand
    end

    def populate_hand
        5.times do
            @cards << @deck.draw
        end
    end

    def value
        # check royal flush
        if self.royal_flush?
            return 21
        #elsif
        # 19
        #check if straight flush
        #18
        #check if...
        #...
        #check highest card
        #return card.value
    end

    def royal_flush?
        #all same suit?
        if @cards.all? {|card| card[0].suit == card.suit }
            
        else
            return false    
        end


    end
    #hand1.value <=> hand2.value

end
