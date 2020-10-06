=begin
Given a number n, draw stairs using the letter "I", n tall and n wide, with the tallest in the top left.

For example n = 3 result in:

"I\n I\n  I"

or printed:

I
 I
  I

Another example, a 7-step stairs should be drawn like this:

I
 I
  I
   I
    I
     I
      I

  Test.assert_equals(draw_stairs(1), "I")
  Test.assert_equals(draw_stairs(2), "I\n I")
  Test.assert_equals(draw_stairs(3), "I\n I\n  I")
=end

def draw_stairs(n)
  tree = ""
  i = 0
  loop do
    tree << "I"
    break if i +1 >= n
    i += 1
    tree << "\n" << " "*i
  end
  tree
end

# Best practices

def draw_stairs
  (0..n).map { |i|  ' ' * i + 'I'}.join("\n")
end

def draw_stairs
  Array.new(n) { |i|  ' ' * i + 'I' }.join("\\n")
end