=begin
  pairs([1,2,5,8,-4,-3,7,6,5]) = 3
  The pairs are selected as follows [(1,2),(5,8),(-4,-3),(7,6),5]
  --the first pair is (1,2) and the numbers in the pair are consecutive; Count = 1
  --the second pair is (5,8) and are not consecutive
  --the third pair is (-4,-3), consecutive. Count = 2
  --the fourth pair is (7,6), also consecutive. Count = 3. 
  --the last digit has no pair, so we ignore.

  describe "Simple Consecutive Pairs" do
    it "Basic tests" do    
      Test.assert_equals(pairs([1,2,5,8,-4,-3,7,6,5]),3)
      Test.assert_equals(pairs([21, 20, 22, 40, 39, -56, 30, -55, 95, 94]),2)
      Test.assert_equals(pairs([81, 44, 80, 26, 12, 27, -34, 37, -35]),0)
      Test.assert_equals(pairs([-55, -56, -7, -6, 56, 55, 63, 62]),4)
      Test.assert_equals(pairs([73, 72, 8, 9, 73, 72]),3)
    end 
  end
=end

def pairs arr
  i = 0
  count = 0
  while i <= arr.size - 1
    count += 1 if (arr[i] + 1 == arr[i+1]) || (arr[i] - 1 == arr[i+1])
    i += 2
  end
  
  count
end

# Best pratices

def pairs arr
  arr.each_slice(2).count {|a, b=a| (a - b).abs == 1}
end

def pairs arr
  arr.each_slice(2).count{|x,y|y&&(x-y).abs==1}
end

def pairs arr
  arr.each_slice(2).count {|a| a.max - a.min == 1}
end