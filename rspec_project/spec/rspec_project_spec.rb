require "rspec_project.rb"

# structure: describe, context, it
# variables: subject, let
# macros: before

describe Array do

  it "removes duplicates from an array" do
    arr = [1, 2, 1, 3, 3]
    expect(arr.my_uniq).to eq([1, 2, 3])
  end

  it "finds all pair positions whose elements sum to zero" do
    arr = [-1, 0, 2, -2, 1]
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end

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
