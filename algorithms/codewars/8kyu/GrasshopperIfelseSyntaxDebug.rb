=begin 
  If/else syntax debug

  While making a game, your partner, Greg, decided to create a function to check if the user is still alive called checkAlive/CheckAlive/check_alive. Unfortunately, Greg made some errors while creating the function.

  checkAlive/CheckAlive/check_alive should return true if the player's health is greater than 0 or false if it is 0 or below.

  The function receives one parameter health which will always be a whole number between -10 and 10.

  describe "check_alive" do
    it "should return true for alive values" do
      Test.assert_equals(check_alive(5), true)
      Test.assert_equals(check_alive(1), true)
    end
    it "should return false for dead values" do
      Test.assert_equals(check_alive(0), false)
      Test.assert_equals(check_alive(-5), false)
    end
  end
=end

def check_alive health
  health > 0
end

# Best practices
def check_alive(health)
  health.positive?
end