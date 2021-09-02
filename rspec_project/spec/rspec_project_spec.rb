require "rspec_project.rb"

# structure: describe, context, it
# variables: subject, let
# macros: before

describe Array do

  it "removes duplicates from an array" do
    arr = [1, 2, 1, 3, 3]
    expect(arr.my_uniq).to eq([1, 2, 3])
  end




end
