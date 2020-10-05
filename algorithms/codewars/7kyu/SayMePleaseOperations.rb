=begin
  You have a string of numbers; starting with the third number each number is the result of an operation performed using the previous two numbers.

  Complete the function which returns a string of the operations in order and separated by a comma and a space, e.g. "subtraction, subtraction, addition"

  The available operations are (in this order of preference):

  1) addition
  2) subtraction
  3) multiplication
  4) division

  Notes:

      All input data is valid
      The number of numbers in the input string >= 3
      For a case like "2 2 4" - when multiple variants are possible - choose the first possible operation from the list (in this case "addition")
      Integer division should be used

  Example

  "9 4 5 20 25"  -->  "subtraction, multiplication, addition"

  Because:

  9 - 4 = 5   --> subtraction
  4 * 5 = 20  --> multiplication
  5 + 20 = 25 --> addition

  Test.assert_equals(say_me_operations("1 2 3 5 8"), "addition, addition, addition")
  Test.assert_equals(say_me_operations("9 4 5 20 25"), "subtraction, multiplication, addition")
  Test.assert_equals(say_me_operations("10 2 5 -3 -15 12"), "division, subtraction, multiplication, subtraction")
  Test.assert_equals(say_me_operations("2 2 4"), "addition")
=end

def say_me_operations(numbers)
  arr = []
  nums = numbers.split(" ").map { |num| num.to_i}
  i = 0
  while i < nums.size - 2
    case nums[i+2]
      when nums[i] + nums[i+1]
        arr << "addition"
      when nums[i] - nums[i+1]
        arr << "subtraction"
      when nums[i] * nums[i+1]
        arr << "multiplication"
      when nums[i] / nums[i+1]
        arr << "division"
    end
    i += 1
  end
  
  arr.join(", ")
end

# Best practices

def say_me_operations(numbers)
  result = []
  
  numbers.split
    .map(&:to_i)
    .each_cons(3) { |a, b, c|
      result << case
        when a + b == c then "addition"
        when a - b == c then "subtraction"
        when a * b == c then "multiplication"
        when a / b == c then "division"
        end
      }
  
  result.join(", ")
end

def say_me_operations(n)
  n.split.map(&:to_i).each_cons(3).map {|i,j,k| i+j==k ? 'addition' : i-j==k ? 'subtraction' : i*j==k ? 'multiplication' : 'division'}.join(', ')
end