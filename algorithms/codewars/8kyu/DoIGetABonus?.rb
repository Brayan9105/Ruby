=begin
  Description:

  It's bonus time in the big city! The fatcats are rubbing their paws in anticipation... but who is going to make the most money?

  Build a function that takes in two arguments (salary, bonus). Salary will be an integer, and bonus a boolean.

  If bonus is true, the salary should be multiplied by 10. If bonus is false, the fatcat did not make enough money and must receive only his stated salary.

  Return the total figure the individual will receive as a string prefixed with "£" (= "\u00A3", JS, Go, and Java), "$" (C#, C++, Ruby, Clojure, Elixir, PHP and Python, Haskell, Lua) or "¥" (Rust).

  Test.describe("Basic tests") do
  Test.assert_equals(bonus_time(10000, true), '$100000')
  Test.assert_equals(bonus_time(25000, true), '$250000')
  Test.assert_equals(bonus_time(10000, false), '$10000')
  Test.assert_equals(bonus_time(60000, false), '$60000')
  Test.assert_equals(bonus_time(2, true), '$20')
  Test.assert_equals(bonus_time(78, false), '$78')
  Test.assert_equals(bonus_time(67890, true), '$678900')
end

=end

def bonus_time(salary, bonus)
  result = "$"
  result += bonus ? (salary * 10).to_s : salary.to_s  
end

def bonus_time(salary, bonus)
  "$#{bonus ? salary * 10 : salary}"
end

def bonus_time(salary, bonus)
  "$#{salary * (bonus ? 10 : 1)}"
end