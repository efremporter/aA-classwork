describe "#remove_dups" do
  it "remove duplicate elements" do
    expect(remove_dups([1,1,1,2,3])).to eq([1,2,3])
  end
end

