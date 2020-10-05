=begin
  Given a string "abc" and assuming that each letter in the string has a value equal to its position in the alphabet, our string will have a value of 1 + 2 + 3 = 6. This means that: a = 1, b = 2, c = 3 ....z = 26.

  You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list. For our purpose, position begins with 1.

  nameValue ["abc","abc abc"] should return [6,24] because of [ 6 * 1, 12 * 2 ]. Note how spaces are ignored.

  "abc" has a value of 6, while "abc abc" has a value of 12. Now, the value at position 1 is multiplied by 1 while the value at position 2 is multiplied by 2.

  Input will only contain lowercase characters and spaces.

  Good luck!

  Test.describe("example tests") do
    Test.assert_equals(wordValue(["codewars","abc","xyz"]),[88,12,225])
    Test.assert_equals(wordValue(["abc abc","abc abc","abc","abc"]),[12,24,18,24])
    Test.assert_equals(wordValue(["abc","abc","abc","abc"]),[6,12,18,24])
    Test.assert_equals(wordValue(["abcdefghijklmnopqrstuvwxyz","stamford bridge","haskellers"]), [351,282,330])
    Test.assert_equals(wordValue(["i love coding","better than pizza","i got this"]),[115,382,321])
    Test.assert_equals(wordValue(["mercury","venus","earth mars","jupiter saturn","uranus neptune"]),[103, 162, 309, 768, 945])
    Test.assert_equals(wordValue(["a cup","some tea","more coffee","one glass"]),[41, 156, 273, 368])
    Test.assert_equals(wordValue(["a","e","i","o","u","the end"]),[1, 10, 27, 60, 105, 336])
    Test.assert_equals(wordValue(["coding","better pizza","i got this too"]),[52, 296, 471])
  end
=end

def wordValue(arr)
  i = 1
  obj = ('a'..'z').each_with_object({}) do |letter, hash| 
    hash[letter] = i
    i+=1
  end
  
  result = []
  arr.each_with_index do |elem, index|
    result << elem.gsub(/\s+/, "").split("").inject(0) { |sum, letter| sum += obj[letter] } * (index + 1)
  end
  
  result
end

# Best practices

def wordValue(arr)
  arr.map!.with_index(1){
    |element, idx| element.delete(" ").chars.map{
     |char| (p char.ord - 96)}.reduce(&:+) * idx} 
  arr
 end
 
def wordValue(l)
  l.map.with_index(1){|s,i|i*s.chars.sum{|c|c.ord%32}}
end