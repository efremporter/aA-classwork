class Tile
  attr_reader :value
  def initialize(value=nil)
    if value
      @value = value
    else
      @value = "-"
    end
  end


end