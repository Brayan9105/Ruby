=begin
  You are given an odd-length array of integers, in which all of them are the same, except for one single number.

  Complete the method which accepts such an array, and returns that single different number.

  The input array will always be valid! (odd-length >= 3)
  Examples

  [1, 1, 2] ==> 2
  [17, 17, 3, 17, 17, 17, 17] ==> 3

  Test.describe("Example test cases") do
    Test.assert_equals(stray([1, 1, 2]), 2)
  end
=end

def stray (numbers)
  a = numbers[0] == numbers[1] ? numbers[0] : numbers[1]
  numbers.delete(a)
  numbers[0]
end

# Best practices

def stray(arr)
  arr.each |x| return x if arr.count(x) == 1
end

def stray (numbers)
  numbers.reduce(&:^)
end

