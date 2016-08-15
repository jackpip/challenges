module Factorial

  def self.of(number)
    return nil if number == nil
    (1..number).reduce(:*)
  end


end
