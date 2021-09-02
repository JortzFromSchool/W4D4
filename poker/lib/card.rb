class Card

  attr_reader :suit, :value, :num

  def initialize(suit, value, num)
    @suit = suit
    @value = value
    @num = num
  end

  def ==(other_card)
    self.suit == other_card.suit && self.value == other_card.value
  end

  def <=>(other_card)
    return self.num <=> other_card.num
  end
end