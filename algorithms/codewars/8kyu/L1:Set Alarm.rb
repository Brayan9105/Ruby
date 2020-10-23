=begin
  Description:

  Write a function named setAlarm which receives two parameters. The first parameter, employed, is true whenever you are employed and the second parameter, vacation is true whenever you are on vacation.

  The function should return true if you are employed and not on vacation (because these are the circumstances under which you need to set an alarm). It should return false otherwise. Examples:

  setAlarm(true, true) -> false setAlarm(false, true) -> false setAlarm(false, false) -> false setAlarm(true, false) -> true

  setalarm(true, true) -> false
  setalarm(false, true) -> false
  setalarm(false, false) -> false
  setalarm(true, false) -> true

  describe "set_alarm" do
    it "returns correct result for all input values" do
      Test.assert_equals set_alarm(true, true), false, "Failed when input is true, true"
      Test.assert_equals set_alarm(false, true), false, "Failed when input is false, true"
      Test.assert_equals set_alarm(false, false), false, "Failed when input is false, false"
      Test.assert_equals set_alarm(true, false), true, "Failed when input is true, false"
    end
  end

=end

def set_alarm(employed, vacation)
  return true if employed && vacation == false
  false
end
