=begin
  Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

  describe "Basic test" do
    it "should test for something" do
      Test.assert_equals(fake_bin('45385593107843568'), '01011110001100111');
      Test.assert_equals(fake_bin('509321967506747'), '101000111101101'); 
      Test.assert_equals(fake_bin('366058562030849490134388085'), '011011110000101010000011011');
    end
  end
=end

def fake_bin(s)
  s.split("").map { |num| num.to_i < 5 ? 0 : 1}.join
end

def fake_bin s
  arr = s.split("")
  result = ""
  
  (0..(arr.size - 1)).each do |n|
    if arr[n].to_i < 5
      result << "0"
    else
      result << "1"
    end
  end
  
  result
end

# Best practices

def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end

def fake_bin(s)
  s.tr('1-9', '00001')
end