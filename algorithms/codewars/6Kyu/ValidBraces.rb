=begin
  Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

  This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

  All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.
  What is considered Valid?

  A string of braces is considered valid if all braces are matched with the correct brace.
  Examples

  "(){}[]"   =>  True
  "([{}])"   =>  True
  "(}"       =>  False
  "[(])"     =>  False
  "[({})](]" =>  False

  Test.assert_equals(validBraces( "()" ), true)
Test.assert_equals(validBraces( "[(])" ), false)
=end

def validBraces(braces)
  arr = []
  index = 0
  valid = true
  
  braces.split("").each do |symbol|
    if symbol == "{" || symbol == "[" || symbol == "("
      arr << symbol 
      index += 1
    else
      case symbol        
        when "}"
          if arr[index-1] == "{" 
            arr.pop()
            index -= 1
          else
            return false
          end
        when "]"
          if arr[index-1] == "[" 
            arr.pop()
            index -= 1
          else
            return false
          end
        when ")"
          if arr[index-1] == "(" 
            arr.pop()
            index -= 1
          else
            return false
          end
      end
    end

    break unless valid
  end
  index == 0 ? valid : false
end

# Best practices

def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty?
end

BRACES = { "(" => ")", "[" => "]", "{" => "}" }
def validBraces(braces)
  braces.each_char.each_with_object([]) { |char, stack|
    case char
    when *BRACES.keys
      stack.push(BRACES[char])
    when *BRACES.values
      return false unless stack.last == char
      stack.pop
    end
  }.empty?
end