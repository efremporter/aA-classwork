class Card
  attr_reader :symbol, :reveal
  def initialize(symbol, reveal=false)
    @symbol = symbol
    @reveal = reveal
  end
  
  def hide?
    @reveal
  end
end