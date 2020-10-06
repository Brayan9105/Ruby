=begin
  Create a method is_upcase? to see whether the string is ALL CAPS. For example:

  "c".is_upcase? == false
  "C".is_upcase? == true
  "hello I AM DONALD".is_upcase? == false
  "HELLO I AM DONALD".is_upcase? == true
  "ACSKLDFJSgSKLDFJSKLDFJ".is_upcase? == false
  "ACSKLDFJSGSKLDFJSKLDFJ".is_upcase? == true

  Test.describe "Is a string uppercase?" do
    Test.it "should work for the examples provided in the description" do
      Test.expect "c".is_upcase? == false
      Test.expect "C".is_upcase? == true
      Test.expect "hello I AM DONALD".is_upcase? == false
      Test.expect "HELLO I AM DONALD".is_upcase? == true
      Test.expect "ACSKLDFJSgSKLDFJSKLDFJ".is_upcase? == false
      Test.expect "ACSKLDFJSGSKLDFJSKLDFJ".is_upcase? == true
    end
    # Add your own test cases here :)
  end
=end

class String
  def is_upcase?
    self.upcase == self
  end
end

# Best practices

class String
  def is_upcase?
    self == upcase
  end
end