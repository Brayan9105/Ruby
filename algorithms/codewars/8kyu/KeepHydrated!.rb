=begin
  Nathan loves cycling.

  Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.

  You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

  For example:

  time = 3 ----> litres = 1

  time = 6.7---> litres = 3

  time = 11.8--> litres = 5


  Test.describe("Basic tests") do
    Test.assert_equals(litres(2), 1)
    Test.assert_equals(litres(1), 0)
    Test.assert_equals(litres(10), 5)
    Test.assert_equals(litres(1.4), 0)
    Test.assert_equals(litres(12.3), 6)
    Test.assert_equals(litres(0.82), 0)
    Test.assert_equals(litres(11.8), 5)
    Test.assert_equals(litres(1787), 893)
    Test.assert_equals(litres(0), 0)
    Test.assert_equals(litres(5.5), 2)
  end
=end

def litres(time)
  (time*0.5).floor
end