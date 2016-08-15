def collatz(number)
  array = []
  while number > 1
    if number % 2 == 0
      array << number
      number /= 2
    else 
      array << number
      number = 3*number + 1
    end
  end
  return array << number
end

puts collatz(1).inspect
puts collatz(3).inspect
puts collatz(4).inspect
puts collatz(7).inspect

max_length = 1
max = 1
1000000.times do |i|
  length = collatz(i+1).count
  if length > max_length
    max_length = length 
    max = i
  end
end

puts "The number from 1 to 1,000,000 with the longest collatz sequence is: #{max} with length #{max_length}"