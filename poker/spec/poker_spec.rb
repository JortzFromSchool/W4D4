require "card.rb"
require "deck.rb"


describe Card do
  it "initializes the Card with Suit and Integer value" do
    card = Card.new(:hearts, 5, 3)
    expect(card.suit).to eq(:hearts)
    expect(card.value).to eq(5)
  end
end

describe Deck do
  it "initializes an array of 52 cards" do
    deck = Deck.new

    expect(deck.array.size).to eq(52)
    deck.array.each do |card|
      expect(card.is_a?(Card)).to be true
    end

  end


  it "shuffles the cards in the array" do
    deck = Deck.new
    expect(deck.array).to eq(deck.array.sort)
    expect(deck.array.sort).to not_eq(deck.shuffle)
  end

  it "all 52 cards are unique" do
    # create a hash and key array [suit, value]
    # check there are 52 keys and that each value is 1


  end

end