text = File.open("football.dat") 

array_of_values = []

text.each_line do |x|
  array_of_values << x.split(" ")
end

array_of_values.each do |line|
  line.delete("-")
end

array_of_values.delete_if {|x| x[0].include?("-")}
array_of_values.delete_if {|x| x.include?("Team")}

test = 0
array_of_values.sort_by! {|x| (x[6].to_f - x[7].to_f).abs}

puts array_of_values[test], array_of_values[test][6].to_f - array_of_values[test][7].to_f