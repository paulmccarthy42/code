# #Write a method called `average` that takes in an array of numbers and returns the average 
# (the sum divided by the total number of numbers). 
# Write it first using a `while` loop, then write it again using an `each` loop. 
# (Hint - if you’re having issues with missing decimals, you may need the .to_f method…)

def average_while(array)
  index = 0
  sum = 0
  while index < array.length
    sum += array[index]
    index += 1
  end
  (sum.to_f/array.length)
end

def average_each(array)
  sum = 0
  array.each {|x| sum += x}
  sum.to_f/array.length
end

array = [1,2]
puts average_while(array)
puts average_each(array)