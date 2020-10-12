=begin
  The purpose of this kata is to work out just how many bottles of duty free whiskey you would have to buy such that the saving over the normal high street price would effectively cover the cost of your holiday.

  You will be given the high street price (normPrice), the duty free discount (discount) and the cost of the holiday.

  For example, if a bottle cost £10 normally and the discount in duty free was 10%, you would save £1 per bottle. If your holiday cost £500, the answer you should return would be 500.

  All inputs will be integers. Please return an integer. Round down.


  describe "Basic Tests" do
    it "should test for something" do
      Test.assert_equals(duty_free(12, 50, 1000), 166)
      Test.assert_equals(duty_free(17, 10, 500), 294)
    end
  end

=end

def duty_free(price, discount, holiday_cost)
  (holiday_cost / (price * (discount/100.0))).floor
end

# Best practices

def duty_free price, discount, cost
  100 * cost / price / discount
end