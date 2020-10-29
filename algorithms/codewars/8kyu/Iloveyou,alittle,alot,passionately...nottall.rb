=begin
Who remembers back to their time in the schoolyard, when girls would take a flower and tear its petals, saying each of the following phrases each time a petal was torn:

    I love you
    a little
    a lot
    passionately
    madly
    not at all

When the last petal was torn there were cries of excitement, dreams, surging thoughts and emotions.

Your goal in this kata is to determine which phrase the girls would say for a flower of a given number of petals, where nb_petals > 0.

Test.describe "Basic test" do 
  Test.assert_equals(how_much_i_love_you(7),"I love you")
  Test.assert_equals(how_much_i_love_you(3),"a lot")
  Test.assert_equals(how_much_i_love_you(6),"not at all")
end
=end

def how_much_i_love_you(nb_petals)
 case nb_petals % 6
   when 1
     "I love you"
   when 2
     "a little"
   when 3
     "a lot"
   when 4
     "passionately"
   when 5
     "madly"
   else
    "not at all"
 end
end

def how_much_i_love_you(nb_petals)
  options = ["I love you", "a little", "a lot", "passionately", "madly", "not at all"]
  options[(nb_petals-1) % options.size]
end

def how_much_i_love_you(nb_petals)
  ['not at all','I love you','a little','a lot','passionately','madly'][nb_petals%6]
end