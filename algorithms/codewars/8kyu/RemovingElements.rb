=begin
  Take an array and remove every second element from the array. Always keep the first element and start removing with the next element.

  Example:

  my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]

  None of the arrays will be empty, so you don't have to worry about that!

  Test.describe("Basic tests") do
    Test.assert_equals(remove_every_other(['Hello', 'Goodbye', 'Hello Again']),['Hello', 'Hello Again'])
    Test.assert_equals(remove_every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),[1, 3, 5, 7, 9])
    Test.assert_equals(remove_every_other([[1, 2]]), [[1, 2]])
    Test.assert_equals(remove_every_other([['Goodbye'], {'Great': 'Job'}]), [['Goodbye']])
    Test.assert_equals(remove_every_other([]), [])
  end

=end

def remove_every_other(arr)
  arrNew = []
  
  (0...arr.size).step(2) do |i|
    arrNew << arr[i]
  end
  arrNew
end

# Best practices

def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end

def remove_every_other(arr)
  arr.map.reject.with_index { |_,i| i.odd? }
end