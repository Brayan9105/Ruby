=begin
  Define String.prototype.toAlternatingCase (or a similar function/method such as to_alternating_case/toAlternatingCase/ToAlternatingCase in your selected language; see the initial solution for details) such that each lowercase letter becomes uppercase and each uppercase letter becomes lowercase. For example:

  "hello world".to_alternating_case() === "HELLO WORLD"
  "HELLO WORLD".to_alternating_case() === "hello world"
  "hello WORLD".to_alternating_case() === "HELLO world"
  "HeLLo WoRLD".to_alternating_case() === "hEllO wOrld"
  "12345".to_alternating_case() === "12345" // Non-alphabetical characters are unaffected
  "1a2b3c4d5e".to_alternating_case() === "1A2B3C4D5E"
  "String.prototype.toAlternatingCase".to_alternating_case() === "sTRING.PROTOTYPE.TOaLTERNATINGcASE"

  As usual, your function/method should be pure, i.e. it should not mutate the original string.

  Test.describe("Basic tests") do
  Test.it("should work for fixed tests (provided in the description)") do
  Test.assert_equals("hello world".to_alternating_case(), "HELLO WORLD")
  Test.assert_equals("HELLO WORLD".to_alternating_case(), "hello world")
  Test.assert_equals("hello WORLD".to_alternating_case(), "HELLO world")
  Test.assert_equals("HeLLo WoRLD".to_alternating_case(), "hEllO wOrld")
  Test.assert_equals("12345".to_alternating_case(), "12345")
  Test.assert_equals("1a2b3c4d5e".to_alternating_case(), "1A2B3C4D5E")
  Test.assert_equals("String.prototype.toAlternatingCase".to_alternating_case(), "sTRING.PROTOTYPE.TOaLTERNATINGcASE")
  Test.assert_equals("Hello World".to_alternating_case().to_alternating_case(), "Hello World")
  end
  Test.it("should work for the title of this Kata") do
  title = "altERnaTIng cAsE"
  title = title.to_alternating_case()
  Test.assert_equals(title, "ALTerNAtiNG CaSe")
  title = title.to_alternating_case()
  Test.assert_equals(title, "altERnaTIng cAsE")
  title = title.to_alternating_case()
  Test.assert_equals(title, "ALTerNAtiNG CaSe")
  title = title.to_alternating_case()
  Test.assert_equals(title, "altERnaTIng cAsE")
  title = "altERnaTIng cAsE <=> ALTerNAtiNG CaSe"
  title = title.to_alternating_case()
  Test.assert_equals(title, "ALTerNAtiNG CaSe <=> altERnaTIng cAsE")
  title = title.to_alternating_case()
  Test.assert_equals(title, "altERnaTIng cAsE <=> ALTerNAtiNG CaSe")
  title = title.to_alternating_case()
  Test.assert_equals(title, "ALTerNAtiNG CaSe <=> altERnaTIng cAsE")
  title = title.to_alternating_case()
  Test.assert_equals(title, "altERnaTIng cAsE <=> ALTerNAtiNG CaSe")
  end
  end
=end

class String
  def to_alternating_case
    self.swapcase
  end
end