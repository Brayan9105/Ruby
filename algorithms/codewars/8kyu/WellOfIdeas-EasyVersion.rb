=begin
  For every good kata idea there seem to be quite a few bad ones!

  In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

  describe "Solution" do
    it "should test for something" do
      Test.assert_equals(well(['bad', 'bad', 'bad']), 'Fail!')
      Test.assert_equals(well(['good', 'bad', 'bad', 'bad', 'bad']), 'Publish!')
      Test.assert_equals(well(['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']), 'I smell a series!')
    end
  end

=end

def well(x)
  return 'I smell a series!' if x.count('good') > 2 
  return 'Publish!' if x.count('good') > 0 && x.count('good') <= 2
  'Fail!'
end

def well(x)
  case x.count('good')
  when 0
    'Fail!'
  when (1..2)
    'Publish!'
  else
    'I smell a series!'
  end
end

def well(x)
  goods = x.count('good')
  goods > 2 ? 'I smell a series!' : goods > 0 ? 'Publish!' : 'Fail!'
end