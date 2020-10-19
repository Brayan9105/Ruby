=begin
  In this Kata, you will be given an array of numbers in which two numbers occur once and the rest occur only twice. Your task will be to return the sum of the numbers that occur only once.

  For example, repeats([4,5,7,5,4,8]) = 15 because only the numbers 7 and 8 occur once, and their sum is 15.

  More examples in the test cases.

  Good luck!

  If you like this Kata, please try:

  Sum of prime-indexed elements

  Sum of integer combinations


  Test.describe("example tests") do
  Test.assert_equals(repeats([4,5,7,5,4,8]),15)
  Test.assert_equals(repeats([9, 10, 19, 13, 19, 13]),19)
  Test.assert_equals(repeats([16, 0, 11, 4, 8, 16, 0, 11]),12)
  Test.assert_equals(repeats([5, 17, 18, 11, 13, 18, 11, 13]),22)
  Test.assert_equals(repeats([5, 10, 19, 13, 10, 13]),24)
  end

=end

def repeats(arr)
  sum = 0
  arr.each do |num|
    sum += num if arr.count(num) == 1
  end
  sum
end

def repeats(arr)
  arr.select { |num| arr.count(num) == 1 }.inject(:+)
end

def repeats(arr)
  arr.select { |n| arr.one? n }.sum
end

def repeats(arr)
  arr.select { |x| arr.count(x) == 1 }.reduce(:+)  
end