# https://www.hackerrank.com/contests/projecteuler/challenges/euler002/submissions/code/3463267

# Enter your code here. Read input from STDIN. Print output to STDOUT

def sum_of_fib_evens(limit_num)
  first = 1
  second = 2
  third = 3
  sum_evens = 2
  
  loop do
    first = second
    second = third
    third = first + second
    break if third > limit_num
    sum_evens += third if third.even?
  end
    
  sum_evens
end

test_cases = gets.chomp.to_i

test_cases.times do
  limit_number = gets.chomp.to_i
  puts sum_of_fib_evens(limit_number)
end