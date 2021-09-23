require "remove_dups.rb"
 
describe "#remove_dups" do
  it "removes duplicate elements" do
    expect(remove_dups([1, 1, 1, 2, 3])).to eq([1,2,3])
  end
end

describe Array do
  # subject(:array) { Array.new([-1, 0, 2, -2, 1]) }
  describe "Array#two_sum" do
    # it "receives an array" do
    #   expect(two_sum).to receive_a(Array)
    # end
    
    it "finds all indices of opposite pairs" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4],[2, 3]])
    end
  end
end

describe "#my_transpose" do 
  subject(:arr1) { Array.new([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]) }

  it "takes in a 2D array" do
    expect { my_transpose(arr1) }.to_not raise_error
  end

  it "converts a row oriented array to a column oriented array" do
    expect(my_transpose(arr1)).to eq(cols = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ])
    

  end

end