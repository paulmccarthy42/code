def double_numbers(old_numbers)
  new_numbers= []
  old_numbers.each {|x| new_numbers << 2 * x}
  return new_numbers
end


p double_numbers([4, 1, 3])  #=> "[8, 2, 6]"
p 'y'

numbers = [1, 2, 4, 2]
sum = 0
count = 0
while count < numbers.length
  number = numbers[count]
  sum += number
  count += 1
end
p sum