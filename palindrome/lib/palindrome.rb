class String
	def palindrome?
    word = self.downcase.gsub(/[^a-z]/, "")
    word = word.chars
    i = 0
    while i < word.count
      if word[i] != word[word.count-i-1]
        return false
      end
      i += 1
    end
    return true
	end

end