require "rspec_project.rb"
require "stock.rb"
require "towers.rb"

# structure: describe, context, it
# variables: subject, let
# macros: before

describe Array do
  describe "#my_uniq" do
    it "removes duplicates from an array" do
      arr = [1, 2, 1, 3, 3]
      expect(arr.my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do
    it "finds all pair positions whose elements sum to zero" do
      arr = [-1, 0, 2, -2, 1]
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "convert between row-oriented and col-oriented representations of a square matrix" do
      arr = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]]
      expect(arr.my_transpose).to eq([
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]])
    end
  end
end

describe Stock do
  subject(:stock) { Stock.new([5, 4, 3, 2, 1, 2, 3, 4, 5])}
  describe "#stock_picker" do
    it 'returns most profitable 2 days' do
      expect(stock.stock_picker).to eq([4, 8])
    end
  end
end

describe Towers do
  subject(:tower) { Towers.new }
  describe "#move" do
    # before(:each) do
    # end
    it "moves the top disc into the specified tower" do
      tower.move ([0, 1])
      tower.move([1, 2])
      expect(tower.left).to eq([3, 2])
      expect(tower.middle).to eq([])
      expect(tower.right).to eq([1])
    end

    it "will not accept invalid moves" do
      expect {tower.move([0, 0])}.to raise_error("Can't move to same tower")
      expect {tower.move([1, 2])}.to raise_error("Can't move from empty tower")
      expect {tower.move([-1, 2])}.to raise_error("Invalid tower selection")
    end
  end

  describe "#won?" do
    it "should return true if right tower is [3, 2, 1]" do
      expect(tower.won?).to be false
      tower.move([0,2])
      tower.move([0,1])
      tower.move([2,1])
      tower.move([0,2])
      tower.move([1,0])
      tower.move([1,2])
      tower.move([0,2])
      expect(tower.right).to eq([3,2,1])
      expect(tower.won?).to be true
    end
  end

end