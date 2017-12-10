def find_missing_letter(string)
  index = 0
  new_string = ""
  string.length.times do
    next_index = index + 1
    if string[index].next != string[next_index] and next_index <= string.length - 1
      new_string += string[index].next 
    end
    index = next_index
  end
  return (new_string == "" ? nil : new_string)
end

p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil

