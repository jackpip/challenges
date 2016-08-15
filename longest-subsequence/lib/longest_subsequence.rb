=begin
module LongestSubsequence

	def self.find(first, second)
    return nil if first == nil || second == nil
    first_subs = []
    first.each_char do |c|
      first_subs << c
      temp = []
      first_subs.each do |s|
        if !(s == c)
          temp << "#{s+c}"
        end
      end
      first_subs = first_subs + temp
    end
    second_subs = []
    second.each_char do |c|
      second_subs << c
      temp = []
      second_subs.each do |s|
        if !(s == c)
          temp << "#{s+c}"
        end
      end
      second_subs = second_subs + temp
    end
    longest_match = ""
    first_subs.each do |f|
      second_subs.each do |s|
        if f == s && f.length > longest_match.length
          longest_match = f
        end
      end
    end
    return longest_match == "" ? nil : longest_match
  end
end
=end

module LongestSubsequence

  def self.find(first, second)
    return nil if first == nil || second == nil
    matrix = Array.new(first.length+1){Array.new(second.length+1)}
    i = 0
    while i <= first.length
      j = 0
      while j <= second.length
        if i == 0 || j == 0
          matrix[i][j] = 0
        else
          if first[i-1] == second[j-1]
            matrix[i][j] = matrix[i-1][j-1] + 1
          else
            if matrix[i-1][j] > matrix[i][j-1]
              matrix[i][j] = matrix[i-1][j]
            else
              matrix[i][j] = matrix[i][j-1]
            end
          end
        end
        j += 1
      end
      i += 1
    end
    word = ""
    i = matrix.length-1
    while i >= 0
      j = matrix[i].length-1
      while j >= 0
        if i == 0 || j == 0
          if word == ""
            return nil
          else 
            return word
          end
        end
        if matrix[i-1][j] < matrix[i][j] && matrix[i][j-1] < matrix[i][j]
          i -= 1
          j -= 1
          word += first[i]
        elsif matrix[i-1][j] == matrix[i][j]
          i -=1
        elsif matrix[i][j-1] == matrix[i][j]
          j -= 1
        end
      end
    end
    return word     
  end
end
