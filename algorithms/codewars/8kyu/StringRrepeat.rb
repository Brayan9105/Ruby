=begin
  Write a function called repeat_str which repeats the given string src exactly count times.

  repeatStr(6, "I") // "IIIIII"
  repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

  Test.describe("Example test cases") do
      Test.assert_equals(repeat_str(3, "*"),"***")
      Test.assert_equals(repeat_str(5, "#"),"#####")
      Test.assert_equals(repeat_str(2, "ha "),"ha ha ")
  end
=end
def repeat_str (n, s)
  s*n
end