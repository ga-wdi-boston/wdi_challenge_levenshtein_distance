def levenshtein_distance(string_1, string_2)
  string1 = string_1.split('')
  string2 = string_2.split('')
  index = 0
  difference = 0
  if string1.length == string2.length
    string1.each do |x|
      if x == string2[index]
        index += 1
      else
        difference += 1
        index +=1
      end
    end
  elsif string1.length > string2.length
    string1.each do |x|
      if x == string2[index]
        index += 1
      else
        difference +=1
        index += 1
      end
    end
    difference += (string1.length - string2.length).abs
  else
    string1.each do |x|
      if x == string2[index]
        index += 1
      else
        difference += 1
        index +=1
      end
    end
    difference += (string2.length - string1.length)
  end
return difference
end
