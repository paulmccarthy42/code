require "unirest"

while true
  system "clear"
  print "Please give me a word: "
  input_word = gets.chomp
  response_for_definition = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
  body_for_def = response_for_definition.body
  if body_for_def != []
    puts "\n#{input_word.capitalize}. Definitions include: \n"
    body_for_def.each do |entry|
      puts "#{response_for_definition.body.index(entry) + 1}. #{entry["text"]}"
    end

    puts "\nHere's it used in an example: "
    response_for_example = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
    body_for_example = response_for_example.body
    puts body_for_example["text"]

    puts "\nAnd it is pronounced: "
    response_for_pron = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
    body_for_pron = response_for_pron.body
    puts body_for_pron[0]["raw"]
  else
    puts "Sorry, not a word"
  end
  puts "\nPress enter to give me another word, or q to quit"
  next_action = gets.chomp
  if next_action == 'q'
    break
  end
end


