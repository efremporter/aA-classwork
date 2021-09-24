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

  describe "#valid_move?" do
    it "the destination stack's top element must be larger than the element you're moving" do
      start_pos = 0
      end_pos = 2
      game.move(0,2)
      expect(game.valid_move?(start_pos, end_pos)).to eq(false)
    end
  end

  describe "#run" do
    it "calls the method #initialize" do
      expect(game).to receive(:initialize) { }
    end
    it "calls the method #move" do
      expect(game).to receive(:move) { }
    end

    it "calls the method #valid_move?" do
      expect(game).to receive(:valid_move?) { }
    end
  end
end 

#valid_moves 