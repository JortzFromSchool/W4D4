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
        end
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
            # make hash with default values of 0
            # royal flush -> specific
            # go through each card and add 1 to their value
            # check if key of 1 = 1
            # check key of 10 = 1 -> 1 10 card
            # same for 11, which is Jack
            # same for 12, 13
            # if all are true, then we have royal flush
        else
            return false
        end


    end
    #hand1.value <=> hand2.value

end
