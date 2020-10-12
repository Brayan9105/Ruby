=begin
  Get ASCII value of a character.

  For the ASCII table you can refer to http://www.asciitable.com/

  Test.assert_equals(getASCII('L'),76)
  Test.assert_equals(getASCII('M'),77)
  Test.assert_equals(getASCII('N'),78)
  Test.assert_equals(getASCII('#'),35)
  Test.assert_equals(getASCII('$'),36)
  Test.assert_equals(getASCII('%'),37)
=end

def getASCII(c)
  c.ord
end