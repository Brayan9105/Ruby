=begin
  In this Kata, you will sort elements in an array by decreasing frequency of elements. If two elements have the same frequency, sort them by increasing value.

  solve([2,3,5,3,7,9,5,3,7]) = [3,3,3,5,5,7,7,2,9]
  --we sort by highest frequency to lowest frequency. If two elements have same frequency, we sort by increasing value

  More examples in test cases.

  Good luck!

  describe "Simple frequency sort" do
    it "Basic tests" do    
      Test.assert_equals(solve([2,3,5,3,7,9,5,3,7]),[3,3,3,5,5,7,7,2,9])
      Test.assert_equals(solve([1,2,3,0,5,0,1,6,8,8,6,9,1]),[1,1,1,0,0,6,6,8,8,2,3,5,9])
      Test.assert_equals(solve([5,9,6,9,6,5,9,9,4,4]),[9,9,9,9,4,4,5,5,6,6])
      Test.assert_equals(solve([4,4,2,5,1,1,3,3,2,8]),[1,1,2,2,3,3,4,4,5,8])
      Test.assert_equals(solve([4,9,5,0,7,3,8,4,9,0]),[0,0,4,4,9,9,3,5,7,8])
    end 
  end
=end

def solve(arr)
  result = []
  indexArr = []
  uniq = arr.uniq.sort
  
  uniq.each do |n|
    indexArr << arr.count(n)
  end
  
  while !indexArr.empty?
    max = indexArr.max
    index = indexArr.index(max)

    number = uniq.slice!(index)
    indexArr.slice!(index)
    
    result << arr.select { |n| n == number }
  end
  
  result.flatten
end



def solve(arr)
  arr.sort_by { |e| [-arr.count(e), e] }
end

def solve(arr)
  h = arr.each_with_object(Hash.new(0)) { |n, h| h[n] += 1 }
  arr.sort_by { |n| [-h[n], n] }
end

def solve(arr)
  arr.group_by(&:itself).values.sort_by {|g| -g.size}.chunk_while {|a,b| a.size == b.size}.map(&:sort).flatten
end