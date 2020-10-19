=begin
  You have an array of numbers.
  Your task is to sort ascending odd numbers but even numbers must be on their places.

  Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

  Example

  sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]

  Test.describe("Basic tests") do
  Test.assert_equals(sort_array([5, 3, 2, 8, 1, 4, 11]), [1, 3, 2, 8, 5, 4, 11])
  Test.assert_equals(sort_array([2, 22, 37, 11, 4, 1, 5, 0]), [2, 22, 1, 5, 4, 11, 37, 0])
  Test.assert_equals(sort_array([1, 111, 11, 11, 2, 1, 5, 0]),[1, 1, 5, 11, 2, 11, 111, 0])
  Test.assert_equals(sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),[1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
  Test.assert_equals(sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),[0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  Test.assert_equals(sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]),[0, 1, 2, 3, 4, 5, 8, 7, 6, 9])
  Test.assert_equals(sort_array([]), [])
  Test.assert_equals(sort_array([19]), [19])
  Test.assert_equals(sort_array([2]), [2])
  Test.assert_equals(sort_array([7,5]), [5,7])
  end
=end

def sort_array(source_array)
  index = 0
  odds = source_array.select { |n| n.odd? }.sort
  
  source_array.each_with_index do |_, i|
    if source_array[i].odd?
      source_array[i] = odds[index]
      index += 1
    end
  end
  source_array
end

def sort_array(xs)
  odd = xs.select(&:odd?).sort.each
  xs.map{ |x| x.odd? ? odd.next : x }
end

def sort_array(source_array)
  odds = source_array.select(&:odd?).sort
  source_array.map { |n| n.even? ? n : odds.shift }
end