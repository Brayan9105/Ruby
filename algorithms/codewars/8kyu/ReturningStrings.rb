=begin
  Returning Strings
  Make a function that will return a greeting statement that uses an input; your program should return, 
  3"Hello, <name> how are you doing today?".

  describe "Basic tests" do
    Test.assert_equals(greet("Ryan"), "Hello, Ryan how are you doing today?")
    Test.assert_equals(greet("Shingles"), "Hello, Shingles how are you doing today?")
  end
=end

def greet(name)
  "Hello, #{name} how are you doing today?"
end