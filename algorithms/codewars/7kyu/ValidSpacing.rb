=begin
Task

Your task is to write a function called valid_spacing() or validSpacing() which checks if a string has valid spacing. The function should return either True or False.

For this kata, the definition of valid spacing is one space between words, and no leading or trailing spaces. Below are some examples of what the function should return.

'Hello world' = true
' Hello world' = false
'Hello world  ' = false
'Hello  world' = false
'Hello' = true
// Even though there are no spaces, it is still valid because none are needed
'Helloworld' = true 
// true because we are not checking for the validity of words.
' ' = false
'' = true

Note - there will be no punctuation or digits in the input string, only letters.


describe "Sample Tests" do
  it "Testing 'Hello world'" do
    Test.assert_equals(valid_spacing('Hello world'), true)
  end
  it "Testing ' Hello world'" do
    Test.assert_equals(valid_spacing(' Hello world'), false)
  end
  it "Testing 'Hello  world '" do
    Test.assert_equals(valid_spacing('Hello  world '), false)
  end
  it "Testing 'Hello'" do
    Test.assert_equals(valid_spacing('Hello'), true)
  end
  it "Testing 'Helloworld'" do
    Test.assert_equals(valid_spacing('Helloworld'), true)
  end
end

=end

def valid_spacing(s)
  return false if s[0] == ' ' || s[-1] == ' '
  
  size = s.size
  
  (0..size).each do |i|
    return false if s[i] == ' ' && s[i + 1] == ' '
  end
  true
end

def valid_spacing(s)
  s == s.split(' ').join(' ')
end

def valid_spacing(s)
  s.gsub(/\s+/, ' ').strip == s
end
