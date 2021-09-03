require "card.rb"
require "deck.rb"
require "hand.rb"

describe Card do
  describe "#initialize" do
    it "initializes the Card with Suit and Integer value" do
      card = Card.new(:hearts, 5, 3)
      expect(card.suit).to eq(:hearts)
      expect(card.value).to eq(5)
    end
  end
end

describe Deck do
  describe "#initialize" do
    it "initializes an array of 52 cards" do
      deck = Deck.new

      expect(deck.array.size).to eq(52)
      deck.array.each do |card|
        expect(card.is_a?(Card)).to be true
      end
    end

    it "all 52 cards are unique" do
      # create a hash and key array [suit, value]
      # check there are 52 keys and that each value is 1
      deck = Deck.new
      hash = Hash.new(0)
      expect(deck.array.length).to eq(52)

      deck.array.each { |card| hash[[card.suit, card.value]] += 1 }
      expect(hash.keys.length).to eq(52)
    end
  end

  describe "#shuffle" do
    it "shuffles the cards in the array" do
      deck = Deck.new
      expect(deck.array).to eq(deck.array.sort)
      expect(deck.array.sort).to_not eq(deck.shuffle)
    end
  end

  describe "#draw" do
    it "takes a card from top of the deck and returns it" do
      deck = Deck.new
      last_card = deck.array.last
      expect(deck.draw).to eq(last_card)
    end
  end
end

describe Hand do
  let(:deck) { double("deck") }
  subject(:hand) { Hand.new(deck) }
  let(:card) { double("card") }

  describe "#initialize" do
    it "grab 5 instances of card from deck" do
      allow(deck).to receive(:draw).and_return(card)
      expect(hand.cards.length).to eq(5)
    end
  end
end

