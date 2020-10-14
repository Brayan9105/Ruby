=begin
  Messi goals function

  Messi is a soccer player with goals in three leagues:

      LaLiga
      Copa del Rey
      Champions

  Complete the function to return his total number of goals in all three leagues.

  Note: the input will always be valid.

  For example:

  5, 10, 2  -->  17

  describe('fixed tests') do
    it('should be 0') { Test.assert_equals(goals(0,0,0), 0) }
    it('should be 58') { Test.assert_equals(goals(43, 10, 5), 58) }
  end
=end

def goals (*goals)
  goals.inject(:+)
end

def goals(*goals)
  goals.sum
end

def goals (*l)
  l.reduce(:+)
end