=begin
  Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.

  For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.

  describe "Basic Tests" do
    it "Test quarter of 3 = 1" do
      Test.assert_equals(quarter_of(3), 1)
    end
    it "Test quarter of 5 = 2" do
      Test.assert_equals(quarter_of(5), 2)
    end
    it "Test quarter of 7 = 3" do
      Test.assert_equals(quarter_of(7), 3)
    end
  end
=end


def quarter_of(month)
  result = case month
    when 1..3
      1
    when 4..6
      2
    when 7..9
      3
    else 
     4
  end
end

# Best practice

def quarter_of(month)
  (month/3.0).ceil
end

def quarter_of(month)
  if month % 3 == 0
    return month / 3
  else
    return (month / 3) + 1
  end
end