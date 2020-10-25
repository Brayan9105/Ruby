=begin
Your task is to remove all consecutive duplicate words from string, leaving only first words entries. For example:

"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"

--> "alpha beta gamma delta alpha beta gamma delta"

Test.assert_equals(remove_consecutive_duplicates('alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta'),
  'alpha beta gamma delta alpha beta gamma delta')
=end

def remove_consecutive_duplicates(s)
  arr = s.split(' ')
  index = 0
  result = []

  while index < arr.size
    
    if arr[index] != arr[index + 1]
      result << arr[index]
    end
    index += 1
  end

  result.join ' '
end

def remove_consecutive_duplicates(s)
  s.split(' ').chunk_while(&:==).map(&:first).join(' ')
end

def remove_consecutive_duplicates(s)
  s.gsub(/\b(\w+)(\s(\1\b))+/, '\1')
end

def remove_consecutive_duplicates(str)
  str.split.each_with_object([]) { |s, arr| arr << s if s != arr.last }.join(' ')
end