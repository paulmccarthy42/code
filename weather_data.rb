text = File.open("weather.dat") 

array_of_values = []

text.each_line do |x|
  array_of_values << x.split(" ")
end

array_of_values.delete_if {|x| x[0].to_i == 0}

array_of_values.sort_by! {|x| x[1].to_f - x[2].to_f}.reverse!

puts "day " + array_of_values[0][0]

p array_of_values