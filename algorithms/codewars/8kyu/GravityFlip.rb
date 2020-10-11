=begin
  Bob is bored during his physics lessons so he's built himself a toy box to help pass the time. The box is special because it has the ability to change gravity.

  There are some columns of toy cubes in the box arranged in a line. The i-th column contains a_i cubes. At first, the gravity in the box is pulling the cubes downwards. When Bob switches the gravity, it begins to pull all the cubes to a certain side of the box, d, which can be either 'L' or 'R' (left or right). Below is an example of what a box of cubes might look like before and after switching gravity.

  +---+                                       +---+
  |   |                                       |   |
  +---+                                       +---+
  +---++---+     +---+              +---++---++---+
  |   ||   |     |   |   -->        |   ||   ||   |
  +---++---+     +---+              +---++---++---+
  +---++---++---++---+         +---++---++---++---+
  |   ||   ||   ||   |         |   ||   ||   ||   |
  +---++---++---++---+         +---++---++---++---+

  Given the initial configuration of the cubes in the box, find out how many cubes are in each of the n columns after Bob switches the gravity.

  Examples:

  "R", [3, 2, 1, 2]     -->  [1, 2, 2, 3]
  "L", [1, 4, 5, 3, 5]  -->  [5, 5, 4, 3, 1]

  "R", [3, 2, 1, 2]     -->  [1, 2, 2, 3]
  "L", [1, 4, 5, 3, 5]  -->  [5, 5, 4, 3, 1]

  Test.assert_equals(flip('R', [3, 2, 1, 2]),    [1, 2, 2, 3])
  Test.assert_equals(flip('L', [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
=end

def flip(dir, boxes)
  dir == "R"? boxes.sort : boxes.sort.reverse
end

# Solution without sort
def flip(dir, boxes)
  boxsize = boxes.size - 1

  if dir == 'R'
    boxsize.downto(1) do |i|
      y = i - 1
      
      while y >= 0
        if boxes[i] >=  boxes[y]
          y -= 1
        else
          dif = boxes[y] - boxes[i]
          boxes[i] += dif
          boxes[y] -= dif
        end
      end
    end
  else
    0.upto(boxsize - 1) do |i|
      y = i + 1
      
      while y <= boxsize
        if boxes[i] >=  boxes[y]
          y += 1

        else
          dif = boxes[y] - boxes[i]
          boxes[i] += dif
          boxes[y] -= dif
        end
      end
    end
  end
  boxes
end

# Best practices

def flip(dir, boxes)
  eval("boxes.sort#{dir == 'L' ? '.reverse' : ''}")
end

def flip(dir, boxes)
  boxes.sort_by(&(dir == 'R' ? :+@ : :-@))
end