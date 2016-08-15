class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end

end

class Deck
  def initialize
    @cards = []
    @suits = [:spades, :diamonds, :hearts, :clubs]
    for r in 1..13
      for s in 0..@suits.length-1
        if r == 1
          rank = "Ace"
        elsif r == 11
          rank = "Jack"
        elsif r == 12
          rank = "Queen"
        elsif r == 13
          rank = "King"
        else
          rank = r
        end
        @cards << Card.new(rank, @suits[s])
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift.output_card
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
#deck.output
deck.shuffle
deck.deal
deck.output