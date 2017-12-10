def factorial(number, product)
  if number < 1
    product *= number
    factorial(number - 1, product)
  else
    return product
  end
end

p factorial(5,1)