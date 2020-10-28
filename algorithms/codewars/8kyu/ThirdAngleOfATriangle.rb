=begin
  You are given two interior angles (in degrees) of a triangle.

  Write a function to return the 3rd.

  Note: only positive integers will be tested.

  https://en.wikipedia.org/wiki/Triangle

  Test.assert_equals(other_angle(30, 60), 90)
  Test.assert_equals(other_angle(60, 60), 60)
  Test.assert_equals(other_angle(43, 78), 59)
  Test.assert_equals(other_angle(10, 20), 150)
=end

def other_angle(a, b)
    180 - (a + b)
end