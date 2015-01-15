def levenshtein_distance(string_1, string_2)
  index = 0
  distance = 0
  string_one, string_two = string_1.split(""), string_2.split("")
  if string_one.length == string_two.length
    string_one.each do |char|
      if char == string_two[index]
        index = index + 1
      else
        distance = distance + 1
        index = index + 1
      end
    end
  elsif string_one.length > string_two.length
    string_two.each do |char|
      if char == string_one[index]
        index = index + 1
      else
        distance = distance + 1
        index = index + 1
      end
    end
    distance += (string_one.length - string_two.length)
  else
    string_one.each do |char|
      if char == string_two[index]
        index = index + 1
      else
        distance = distance + 1
        index = index + 1
      end
    end
    distance += (string_two.length - string_one.length)
  end
  return distance
end
