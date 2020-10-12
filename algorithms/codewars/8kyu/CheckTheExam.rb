=begin
  The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"]. The second one contains a student's submitted answers.

  The two arrays are not empty and are the same length. Return the score for this array of answers, giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer, represented as an empty string (in C the space character is used).

  If the score < 0, return 0.

  For example:

  checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) → 6
  checkExam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) → 7
  checkExam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) → 16
  checkExam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) → 0

  describe "Check the Exam" do
    it "Basic tests" do  
      Test.assert_equals(check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]), 6)
      Test.assert_equals(check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""]), 7)
      Test.assert_equals(check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"]), 16)
      Test.assert_equals(check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"]), 0)
    end
  end
=end

def check_exam(arr1,arr2)
  result = 0
  
 (0..arr1.size - 1).each do |i|
   if arr2[i] == ""
      result += 0
   elsif arr1[i] == arr2[i]
      result += 4
    else
      result -= 1
    end
  end
   result >= 0 ? result : 0
end

# Best practices

def check_exam(arr1,arr2)
  result = 0
  arr1.each_with_index do |a,i|
    result += a == arr2[i] ? 4 : arr2[i] == "" ? 0 : -1
  end
  result = result > 0 ? result : 0
end

ef check_exam(arr1,arr2)
  res = 0
  arr1.zip(arr2).map{|i,j| res += j == "" ? 0 : i == j ? 4 : -1}
  [res,0].max
end