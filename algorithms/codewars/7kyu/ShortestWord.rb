=begin
  Simple, given a string of words, return the length of the shortest word(s).

  String will never be empty and you do not need to account for different data types.


  describe "Basic Tests" do
    it "Simple Cases" do
      Test.assert_equals(find_short("bitcoin take over the world maybe who knows perhaps"), 3)
      Test.assert_equals(find_short("turns out random test cases are easier than writing out basic ones"), 3)
      Test.assert_equals(find_short("lets talk about javascript the best language"), 3)
      Test.assert_equals(find_short("i want to travel the world writing code one day"), 1)
      Test.assert_equals(find_short("Lets all go on holiday somewhere very cold"), 2)
    end
  end
=end

def find_short(s)
  s.split(" ").map { |n| n.length }.min
end