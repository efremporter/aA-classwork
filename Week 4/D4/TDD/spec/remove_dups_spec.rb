require "remove_dups.rb"

describe "#remove_dups" do
  it "removes duplicate elements" do
    expect(remove_dups([1, 1, 1, 2, 3])).to eq([1,2,3])
  end
end

describe "Array" do
  subject(:array) { Array.new([-1, 0, 2, -2, 1]) }
  describe "#two_sum" do
    # it "receives an array" do
    #   expect(two_sum).to receive_a(Array)
    # end
    
    it "finds all indices of opposite pairs" do
      expect(two_sum(array)).to eq([[0, 4],[2, 3]])
    end
  end
end