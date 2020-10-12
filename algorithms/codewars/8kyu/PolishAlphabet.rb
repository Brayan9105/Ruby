=begin
  There are 32 letters in the Polish alphabet: 9 vowels and 23 consonants.

  Your task is to change the letters with diacritics:

  ą -> a,
  ć -> c,
  ę -> e,
  ł -> l,
  ń -> n,
  ó -> o,
  ś -> s,
  ź -> z,
  ż -> z

  and print out the string without the use of the Polish letters.

  For example:

  "Jędrzej Błądziński"  -->  "Jedrzej Bladzinski"

  Test.assert_equals(correct_polish_letters("Jędrzej Błądziński"), "Jedrzej Bladzinski")
  Test.assert_equals(correct_polish_letters("Lech Wałęsa"), "Lech Walesa")
  Test.assert_equals(correct_polish_letters("Maria Skłodowska-Curie"), "Maria Sklodowska-Curie")
=end

def correct_polish_letters(s)
  alphabet = {
  ą: 'a',
  ć: 'c',
  ę: 'e',
  ł: 'l',
  ń: 'n',
  ó: 'o',
  ś: 's',
  ź: 'z',
  ż: 'z'
  }

  word = ''
  s.split('').each do |letter|
    if letter == " "
      word << letter
      next
    end

    word += alphabet.has_key?(letter.to_sym)  ? alphabet[letter.to_sym] : letter 
    
  end
  word
end

# Best practices

def correct_polish_letters s
  s.tr("ąćęłńóśźż", "acelnoszz") #tr return a new string replacing the letter of the left the corresponding right spot
end

def correct_polish_letters(s)
  # gsub with a hash as second parameter
  s.gsub(/[ąćęłńóśźż]/,
    'ą' => 'a',
    'ć' => 'c',
    'ę' => 'e',
    'ł' => 'l',
    'ń' => 'n',
    'ó' => 'o',
    'ś' => 's',
    'ź' => 'z',
    'ż' => 'z')
end