=begin
  Description:

  You might know some pretty large perfect squares. But what about the NEXT one?

  Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.

  If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is positive.

  Examples:

  findNextSquare(121) --> returns 144
  findNextSquare(625) --> returns 676
  findNextSquare(114) --> returns -1 since 114 is not a perfect

  describe "find_next_square" do
    it "should return the next square for perfect squares" do
      Test.assert_equals(find_next_square(121), 144, "Wrong output for 121")
      Test.assert_equals(find_next_square(625), 676, "Wrong output for 625")
      Test.assert_equals(find_next_square(319225), 320356, "Wrong output for 319225")
      Test.assert_equals(find_next_square(15241383936), 15241630849, "Wrong output for 15241383936")
    end
    
    it "should return -1 for numbers which aren't perfect squares" do
      Test.assert_equals(find_next_square(155), -1, "Wrong output for 155")
      Test.assert_equals(find_next_square(342786627), -1, "Wrong output for 342786627")
    end
    
    it "should work for random inputs" do
    
      def solution(sq)
        root = sq ** 0.5
      
        root % 1 == 0 ? (root.to_i + 1)**2 : -1
      end
    
      40.times do
        sq = (rand * 10**rand(1..5)).to_i
        sq = sq*sq if rand > 0.5
        
        message = "Wrong output for #{sq}"
        Test.assert_equals(find_next_square(sq), solution(sq), message)
      end
    end
  end

=end

def find_next_square(sq)
  return -1 unless Math.sqrt(sq) == Math.sqrt(sq).round()
  loop do
    sq += 1
    break if Math.sqrt(sq) == Math.sqrt(sq).round()
  end
  sq
end

# Best practices

def find_next_square(sq)
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? number**2 : -1
end

def find_next_square(sq)
  sqrt = Math.sqrt(sq)
  sqrt % 1 == 0 ? (sqrt + 1)**2 : -1
end
