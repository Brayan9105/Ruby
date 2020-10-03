=begin
  Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
  For example:
  summation(2) -> 3
  1 + 2
  summation(8) -> 36
  1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

  describe "summation" do
    it "should return the correct total" do
      Test.assert_equals(summation(1), 1)
      Test.assert_equals(summation(8), 36)
    end
  end
=end

def summation(num)
  (1..num).inject(0) { |memo, num| memo + num }
end

#Best practices

def summation(num)
  (1..num).inject(:+)
end

def summation(num)
  (1..num).reduce(:+)
end