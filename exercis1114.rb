def find_longest_word(string)
  words = string.split(" ")
  ordered_words = words.sort_by{|x| x.length}.reverse
  return ordered_words.first
end

puts find_longest_word("hello there")
#displays last in sentence if there's a tie