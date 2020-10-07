=begin
  Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. 
  The string can contain any char.

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
  x = 0
  o = 0
  
  str.downcase.split("").each do |letter|
    x +=1 if letter == "x"
    o +=1 if letter == "o"
  end
  x == o
end

# Best practices

def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

def XO(str)
  str.count('Xx') == str.count('oO')
end