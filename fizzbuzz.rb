100.times do |i|
	num = i + 1
	if num % 3 == 0 && num % 5 == 0
		puts "FizzBuzz"
	elsif num % 3 == 0 
		puts "Fizz"
	elsif num % 5 == 0
		puts "Buzz"
	else
		puts i + 1
	end
end
		
