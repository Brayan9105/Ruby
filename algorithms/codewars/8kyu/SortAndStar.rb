=begin
  You will be given a vector of strings. You must sort it alphabetically (case-sensitive, and based on the ASCII values of the chars) and then return the first value.

  The returned value must be a string, and have "***" between each of its letters.

  You should not remove or add elements from/to the array.

  Test.describe('Basic Tests') do
    Test.assert_equals(two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]), 'b***i***t***c***o***i***n' );
    Test.assert_equals(two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]), 'a***r***e'); 
    Test.assert_equals(two_sort(["lets", "talk", "about", "javascript", "the", "best", "language"]), 'a***b***o***u***t'); 
    Test.assert_equals(two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]), 'c***o***d***e'); 
    Test.assert_equals(two_sort(["Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"]), 'L***e***t***s'); 
  end
=end

def two_sort(s)
  arr = s.sort.first.split('')
  arr.map.with_index { |letter, i|  i != (arr.size - 1) ? letter += '***' : letter }.join
end

def two_sort(s)
  s.min.chars.join('***')
end

def two_sort(s)
  s.sort.first.chars.join('***')
end

def two_sort(s)
  s.sort[0].chars.join("***")
end