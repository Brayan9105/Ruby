=begin
  Convert number to reversed array of digits

  Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
  Example:

  348597 => [7,9,5,8,4,3]

  Test.assert_equals(digitize(35231),[1,3,2,5,3])
=end

def digitize(n)
  n.to_s.split('').reverse.map(&:to_i)
end

def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end

def digitize(n)
  n.digits 
end