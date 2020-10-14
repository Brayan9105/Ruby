=begin
Numbers ending with zeros are boring.

They might be fun in your world, but not here.

Get rid of them. Only the ending ones.

1450 -> 145
960000 -> 96
1050 -> 105
-1050 -> -105

Zero alone is fine, don't worry about it. Poor guy anyway


Test.assert_equals(no_boring_zeros(1450), 145)
Test.assert_equals(no_boring_zeros(960000), 96)
Test.assert_equals(no_boring_zeros(1050), 105)
Test.assert_equals(no_boring_zeros(-1050), -105)
Test.assert_equals no_boring_zeros(0), 0
=end

def no_boring_zeros(num)
  str = num.to_s.split('')
  (str.size - 1).downto(0).each do |i|
    str[i].to_i != 0 ? break : str.pop
  end
  
  str.join.to_i
end

def no_boring_zeros(num)
  num.to_s.gsub(/[0]+$/,"").to_i
 
end

def no_boring_zeros(num)
  return num if num.zero?
  num /= 10 until num % 10 != 0
  num
end

def no_boring_zeros(num)
  num.to_s.sub(/0*$/, '').to_i
end