# https://www.hackerrank.com/contests/projecteuler/challenges/euler001/submissions/code/3463235

# Enter your code here. Read input from STDIN. Print output to STDOUT

def multiples_of_3_or_5(number)
  number -= 1 # Numbers BELOW number
  first_progression = number / 3
  second_progression = number / 5
  third_progression = number / 15
  mp_of_3 = 3 * (first_progression * (first_progression + 1)) / 2
  mp_of_5 = 5 * (second_progression * (second_progression + 1)) / 2
  mp_of_15 = 15 * (third_progression * (third_progression + 1)) / 2
  
  mp_of_3 + mp_of_5 - mp_of_15
end

test_cases = gets.chomp.to_i

test_cases.times do
  number = gets.chomp.to_i
  puts multiples_of_3_or_5(number)
end