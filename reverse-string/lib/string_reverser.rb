module StringReverser
	def self.reverse(input)
    return nil if input == nil
		chars = input.chars
    new_string = ""
    i = chars.count-1
    while i >= 0
      new_string += chars[i]
      i -= 1
    end
    return new_string
	end

end