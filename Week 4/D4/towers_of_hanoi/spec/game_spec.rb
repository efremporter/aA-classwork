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
      expect(game.grid).to eq(array)
    end

    it "sets game_over as false" do
      expect(game.game_over).to be(false)
    end
  end

  describe "#move" do

    it "adds a piece to the top of a stack" do 
      start_pos = 0
      end_pos = 2
      expect(game.move(start_pos, end_pos)).to eq([[5,4,3,2],[],[1]])
    end
  end
end

#valid_moves 
#pop
#push