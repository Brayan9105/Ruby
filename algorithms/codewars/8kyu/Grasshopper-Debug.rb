=begin
  Debug celsius converter

  Your friend is traveling abroad to the United States so he wrote a program to convert fahrenheit to celsius. Unfortunately his code has some bugs.

  Find the errors in the code to get the celsius converter working properly.

  To convert fahrenheit to celsius:

  celsius = (fahrenheit - 32) * (5/9)

  Please round to 5dp (use .round(5))

  Test.describe ('Celsius converter') do
    Test.it ('should get correct answer') do
      Test.assert_equals(weather_info(50), '10.0 is above freezing temperature')
      Test.assert_equals(weather_info(23),  '-5.0 is freezing temperature')
    end
end

=end

def weather_info temp
  c = convertToCelsius(temp)
  
  if c > 0
    return "#{c} is above freezing temperature"
  else
    return "#{c} is freezing temperature"
  end
end

def convertToCelsius temperature
  return ((temperature - 32.0) * 5.0/9.0).round(5)
end