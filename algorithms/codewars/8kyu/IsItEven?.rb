=begin
  In this Kata we are passing a number (n) into a function.

  Your code will determine if the number passed is even (or not).

  The function needs to return either a true or false.

  Numbers may be positive or negative, integers or floats.

  Floats are considered UNeven for this kata.

  Test.assert_equals(test_even(0), true, "testEven for 0");
  Test.assert_equals(test_even(0.5), false, "testEven for 0.5");
  Test.assert_equals(test_even(1), false, "testEven for 1");
  Test.assert_equals(test_even(2), true, "testEven for 2");
  Test.assert_equals(test_even(-4), true, "testEven for 2");
=end

def test_even(n)
  n.is_a?(Float) ? false : n.even?
end

def test_even(n)
  n % 2 == 0
end