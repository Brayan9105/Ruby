=begin
Description:

Write a function that always returns 5

Sounds easy right? Just bear in mind that you can't use any of the following characters: 0123456789*+-/

Good luck :)

solution = File.open('/workspace/solution.txt', 'r').read

def check(file)
  "0123456789+-*/".chars.none?(&file.method(:include?))
end

describe "Check Solution" do
  it "should prevent the forbidden chars from being used anywhere in the code" do
    Test.expect(check(solution), "Forbidden characters found!")
  end
 
  it "should return 5" do
    Test.assert_equals(unusual_five, 5, "lol") 
  end  
end

=end

def unusual_five()
  'hello'.size
end 