puts "Letter pile:"
letters = gets.chomp.downcase
letters_array = []
letters.each_char {|x| letters_array << x}

puts "How many letters in the word?"
number = gets.chomp.to_i

puts "enter required letters"
bonus = gets.chomp.downcase

perms = letters_array.permutation(number).to_a.sort

perms.each do |x|
  if x.include?(bonus) or bonus == ''
    x.each {|y| print y}
    print "\n"
  end
end