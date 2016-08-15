module Uniques

  def self.cleanup(array)
    #return array & array
    a = 0
    new_array = []
    while a < array.count
      check = true
      b = 0
      while b < new_array.count
        if array[a] == new_array[b]
          check = false
        end
        b += 1
      end
      if check
        new_array << array[a]
      end 
      a += 1
    end
    return new_array
  end

end
