=begin
Description:

Make a simple function called greet that returns the most-famous "hello world!".
Style Points

Sure, this is about as easy as it gets. But how clever can you be to create the most creative hello world you can think of? What is a "hello world" solution you would want to show your friends?

describe "Testing function" do
  it "Correct return-value?" do
    Test.assert_equals(greet, "hello world!")
  end
end
=end

def greet
  "hello world!"
end