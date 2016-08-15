class LargestPrimeFactor

  def largest_prime_of(number)
    return nil if number == nil
    factors = []
    (1..number).each do |n|
      if number % n == 0
        factors << n
      end
    end
    primes = []
    factors.each do |factor|
      check = true
      (1..factor).each do |f|
        if factor % f == 0 && f != 1 && f != factor
          check = false
        end
      end
      if check
          primes << factor
        end
    end
    largest = 0
    primes.each do |p|
      if p > largest
        largest = p
      end
    end
    return largest
  end
  
end
