=begin
  Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

  Examples input/output:

  XO("ooxx") => true
  XO("xooxx") => false
  XO("ooxXm") => true
  XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
  XO("zzoo") => false

  Test.assert_equals(XO('xo'),true)
  Test.assert_equals(XO('XO'),true)
  Test.assert_equals(XO('xo0'),true)
  Test.assert_equals(XO('xxxoo'),false)
  Test.assert_equals(XO("xxOo"),true)
=end

def XO(str)
  str.downcase!
  (str.count("x") == 0 && str.count("o") == 0) || str.count("x") == str.count("o")
end

# Best practices

def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

def XO(str)
  str.count('Xx') == str.count('oO')
end