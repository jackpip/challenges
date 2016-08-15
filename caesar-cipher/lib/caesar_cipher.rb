class String
  def rot13
    lower = ('a'..'z').to_a
    upper = ('A'..'Z').to_a
    new_string = ""
    self.each_char do |c|
      if c == " "
        new_string += " "
        next
      end
      if lower.index(c) != nil
        if lower.index(c) >= 13
          new_string += lower[lower.index(c) % 13]
        elsif lower.index(c) < 13
          new_string += lower[lower.index(c) + 13]
        end
      elsif upper.index(c) != nil
        if upper.index(c) >= 13
          new_string += upper[upper.index(c) % 13]
        elsif upper.index(c) < 13
          new_string += upper[upper.index(c) + 13]
        end
      end
    end
    new_string
  end
end