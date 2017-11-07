def double_numbers(old_numbers)
  new_numbers= []
  old_numbers.each {|x| new_numbers << 2 * x}
  return new_numbers
end


p double_numbers([4, 1, 3])  #=> "[8, 2, 6]"
p 'y'
