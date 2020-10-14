=begin
Triple Trouble

Create a function that will return a string that combines all of the letters of the three inputed strings in groups. Taking the first letter of all of the inputs and grouping them next to each other. Do this for every letter, see example below!

E.g. Input: "aa", "bb" , "cc" => Output: "abcabc"

Note: You can expect all of the inputs to be the same length.


Test.describe("Basic tests") do
Test.assert_equals(triple_trouble("aaa","bbb","ccc"), "abcabcabc")
Test.assert_equals(triple_trouble("aaaaaa","bbbbbb","cccccc"), "abcabcabcabcabcabc")
Test.assert_equals(triple_trouble("burn", "reds", "roll"), "brrueordlnsl")
Test.assert_equals(triple_trouble("Bm", "aa", "tn"), "Batman")
Test.assert_equals(triple_trouble("LLh", "euo", "xtr"), "LexLuthor")
end

=end

def triple_trouble(one, two, three)
  word = ''
  (0...one.size).each do |i|
   word << one[i] << two[i] << three[i]
  end
  word
end

# Best practices

def triple_trouble(one, two, three)
  one.chars.zip(two.chars, three.chars).join("")
end

def triple_trouble(*strings)
  strings.map(&:chars).transpose.join
end

def triple_trouble(one, two, three)
  [one, two, three].map(&:chars).transpose.join
end