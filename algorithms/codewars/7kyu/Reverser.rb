=begin
  Impliment the reverse function, which takes in input n and reverses it. For instance, reverse(123) should return 321. You should do this without converting the inputted number into a string.

  describe "Tests" do
    it "should print the reverse number" do
      Test.assert_equals(reverser(1234), 4321)
      Test.assert_equals(reverser(4321), 1234)
      Test.assert_equals(reverser(1001), 1001)
      Test.assert_equals(reverser(1010), 101)
    end
  end

=end

def reverser(number)
  number.to_s.split('').reverse.join.to_i
end

def reverser(number)
  output = 0
  while number > 0 do
    output *= 10
    output += (number % 10)
    number /= 10
  end
  output
end

def reverser(number)
   number.digits.join.to_i
end