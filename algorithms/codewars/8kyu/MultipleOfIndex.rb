=begin
Return a new array consisting of elements which are multiple of their own index in input array (length > 1).

Some cases:

[22, -6, 32, 82, 9, 25] =>  [-6, 32, 25]

[68, -1, 1, -7, 10, 10] => [-1, 10]

[-56,-85,72,-26,-14,76,-27,72,35,-21,-67,87,0,21,59,27,-92,68] => [-85, 72, 0, 68]

describe "Multiple of index" do
  it "Basic tests" do  
    Test.assert_equals(multiple_of_index([22, -6, 32, 82, 9, 25]), [-6, 32, 25])
    Test.assert_equals(multiple_of_index([68, -1, 1, -7, 10, 10]), [-1, 10])
    Test.assert_equals(multiple_of_index([11, -11]), [-11])
    Test.assert_equals(multiple_of_index([-56,-85,72,-26,-14,76,-27,72,35,-21,-67,87,0,21,59,27,-92,68]), [-85, 72, 0, 68])
    Test.assert_equals(multiple_of_index([28,38,-44,-99,-13,-54,77,-51]), [38, -44, -99])
    Test.assert_equals(multiple_of_index([-1,-49,-1,67,8,-60,39,35]), [-49, 8, -60, 35])
  end
end

=end

def multiple_of_index arr
  result = []
    
  arr.each_with_index do |ele, i|
    next if i == 0
    result << ele if ele % i == 0
  end
  
  result
end

def multiple_of_index a
  a.select.with_index { |n, i| i != 0 && n % i == 0 }
end

def multiple_of_index arr
  arr.select.with_index {|val, index| index.nonzero? && val % index == 0 }
end