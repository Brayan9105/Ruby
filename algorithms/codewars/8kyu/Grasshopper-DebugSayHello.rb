=begin 
  The starship Enterprise has run into some problem when creating a program to greet everyone as they come aboard. It is your job to fix the code and get the program working again!

  Example output:

  Hello, Mr. Spock

  Test.assert_equals(say_hello('Mr. Spock'), 'Hello, Mr. Spock')
  Test.assert_equals(say_hello('Captain Kirk'), 'Hello, Captain Kirk')
  Test.assert_equals(say_hello('Liutenant Uhura'), 'Hello, Liutenant Uhura')
  Test.assert_equals(say_hello('Dr. McCoy'), 'Hello, Dr. McCoy')
  Test.assert_equals(say_hello('Mr. Scott'), 'Hello, Mr. Scott')
=end

def say_hello(name)
  "Hello, #{name}"
end