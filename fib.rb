def recursive_fib(number)
  return 0 if number == 0
  return 1 if number == 1
  return recursive_fib(number-1) + recursive_fib(number-2) 
end

def iterative_fib(number)
  return 0 if number == 0
  return 1 if number == 1
  first_num = 0
  second_num = 1
  sum = 0
  (number-1).times do |i|
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  return sum
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
