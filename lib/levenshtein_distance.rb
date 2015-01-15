
def hamming_distance(string_1, string_2)
  hamming_distance = 0
  string_1.downcase.chars.zip(string_2.downcase.chars).each do |character_place|
    if character_place[0] != character_place[1]
      hamming_distance += 1
    end
  end
  hamming_distance
end

def levenshtein_distance(string_1, string_2)
  levenshtein_distance = 0
  letters_1, letters_2 = string_1.downcase.chars, string_2.downcase.chars
  if string_1.length == string_2.length
    hamming_distance(string_1,string2)
  elsif letters_1.length > letters_2.length
    letters_1.each_with_index {|letter, index| letter == letters_2[index] ? nil : levenshtein_distance += 1 }
    levenshtein_distance
  else
    letters_2.each_with_index {|letter, index| letter == letters_1[index] ? nil : levenshtein_distance += 1 }
    levenshtein_distance
  end
end
