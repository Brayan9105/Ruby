=begin
  Define a method hello that returns "Hello, Name!" to a given name, 
  or says Hello, World! if name is not given (or passed as an empty String).

  Assuming that name is a String and it checks for user typos to return a name 
  with a first capital letter (Xxxx).

  Examples:

  hello "john"   => "Hello, John!"
  hello "aliCE"  => "Hello, Alice!"
  hello          => "Hello, World!" # name not given
  hello ''       => "Hello, World!" # name is an empty String


  describe "Hello" do
    it "should return 'Hello, John!' when given 'johN'" do
      Test.assert_equals(hello('johN'), "Hello, John!")
    end
    
    it "should return 'Hello, Alice!' when given 'alice'" do
      Test.assert_equals(hello('alice'), "Hello, Alice!")
    end
    
    it "should return 'Hello, World!' when no name given" do
      Test.assert_equals(hello, "Hello, World!")
    end
    
    it "should return 'Hello, World!' when name is empty" do
      Test.assert_equals(hello(''), "Hello, World!")
    end
  end

=end

def hello(name='')
  name.empty? ? "Hello, World!" : "Hello, #{name.downcase.capitalize}!"
end

# Best practices

def hello(name='World')
  "Hello, #{name.empty? ? 'World' : name.capitalize}!"
end

