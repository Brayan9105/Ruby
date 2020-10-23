=begin
Description:

Friday 13th or Black Friday is considered as unlucky day. Calculate how many unlucky days are in the given year.

Find the number of Friday 13th in the given year.

Input: Year as an integer.

Output: Number of Black Fridays in the year as an integer.

Examples:

unluckyDays(2015) == 3
unluckyDays(1986) == 1

Note: In Ruby years will start from 1593.


Test.describe("Basic Tests") do
Test.assert_equals(unlucky_days(2819), 2, "should be: 2")
Test.assert_equals(unlucky_days(2792), 2, "should be: 2")
Test.assert_equals(unlucky_days(2723), 2, "should be: 2")
Test.assert_equals(unlucky_days(1909), 1, "should be: 1")
Test.assert_equals(unlucky_days(1812), 2, "should be: 2")
Test.assert_equals(unlucky_days(1618), 2, "should be: 2")
Test.assert_equals(unlucky_days(2132), 1, "should be: 1")
Test.assert_equals(unlucky_days(2065), 3, "should be: 3")
end
=end

def unlucky_days(year)
  count = 0
  Date.new(year, 01, 01).upto(Date.new(year, 12, 31)) do |date|
    count += 1 if (date.friday? && date.day == 13)
  end
  count
end

def unlucky_days(year)
  # naive approach
  (1..12).count { |month| Date.new(year, month, 13).friday? }
end