=begin
Complete the function that takes two integers (a, b, where a < b) and return an array of all integers between the input parameters, including them.

For example:

a = 1
b = 4
--> [1, 2, 3, 4]

Test.assert_equals(between(1, 4), [1, 2, 3, 4])
Test.assert_equals(between(-2, 2), [-2, -1, 0, 1, 2])

=end
def between(a, b)
  (a..b).to_a
end