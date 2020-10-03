=begin
  Implement a function named generateRange(min, max, step), which takes three arguments and generates a range of integers from min to max, with the step. The first integer is the minimum value, the second is the maximum of the range and the third is the step. (min < max)
  Task

  Implement a function named

  generate_range(2, 10, 2) # should return array of [2,4,6,8,10]
  generate_range(1, 10, 3) # should return array of [1,4,7,10]

  describe "Solution" do
    it "start point 1, step 1" do
      Test.assert_equals(generate_range(1,10,1), [1,2,3,4,5,6,7,8,9,10], "This is just an example of how you can write your own TDD tests")
    end
    it "start point 1, any step" do
      Test.assert_equals(generate_range(1,10,2), [1,3,5,7,9], "This is just an example of how you can write your own TDD tests")
    end
    it "any start point, any step" do
      Test.assert_equals(generate_range(25,50,5), [25, 30, 35, 40, 45, 50], "This is just an example of how you can write your own TDD tests")
    end
  end
=end

def generate_range(min, max, step)
  i = min
  arr = []
  while min <= max
    arr << min
    min += step
  end
  arr
end

# Best practices

def generate_range(min, max, step)
 (min..max).step(step).to_a
end