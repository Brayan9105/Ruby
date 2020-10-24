=begin
Create a method take that accepts a list/array and a number n, and returns a list/array array of the first n elements from the list/array.

If you need help, here's a reference:

http://www.rubycuts.com/enum-take

describe "take" do
  list = [0,1,2,3,5,8,13]
  Test.assert_equals(take(list, 3), [0,1,2], "should return the first 3 items")
end
=end

def take list, n
  list.take n
end