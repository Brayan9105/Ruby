=begin
  Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

  invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
  invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
  invert([]) == []

  You can assume that all values are integers. Do not mutate the input array/list.

  describe "Basic Tests" do
    Test.assert_equals(invert([1,2,3,4,5]),[-1,-2,-3,-4,-5])
    Test.assert_equals(invert([1,-2,3,-4,5]),[-1,2,-3,4,-5])
    Test.assert_equals(invert([0]),[0])
    Test.assert_equals(invert([-1,0,1]),[1,0,-1])
    Test.assert_equals(invert([]),[])
  end
=end

def invert(list)
  list.map { |num| num * -1}
end