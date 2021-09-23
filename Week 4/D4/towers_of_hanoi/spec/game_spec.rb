require "game.rb" 

describe Game do 
  subject(:game) { Game.new(5) }
  subject(:array) { [[5,4,3,2,1],[],[]] }
  subject(:game_over) {false}
  describe "#initialize" do 
    it "takes in a number to represent the number of stacks" do 
      expect { Game.new(5) }.to_not raise_error
    end

    it "sets @grid to empty 2D array" do
      expect(game).to eq(array)
    end

    it "sets game_over as false" do
      expect(game_over).to be(false)
    end
  end
end