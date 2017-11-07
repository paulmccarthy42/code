# Exercise: 
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

pokemon_1 = {:name => "Bulbasaur", 
  :type1 => "Grass",
  :type2 => "Poison",
  :level => 5,
  :evolves_into => "Ivysaur",
  :evolves_at => 16
  }

pokemon_2 = {:name => "Ivysaur",
  :type1 => "Grass",
  :type2 => "Poison",
  :evolves_into => "Venusaur",
  :evolves_at => 32
  }

pokemon_3 = {:name => "Venusaur",
  :type1 => "Grass",
  :type2 => "Poison"
  }

pokemon_4 = {name: "Charmander",
  type1: "Fire",
  starting_level: 5,
  evolves_into:  "Charmeleon",
  evolves_at:  14
  }

pokemon_5 = {:name => "Charmeleon",
  :type1 => "Fire",
  :evolves_into => "Charizard",
  :evolves_at => 36
  }

pokemon_6 = {:name => "Charizard",
  :type1 => "Fire",
  :type2 => "Flying"
  }

best_starter = [pokemon_1, pokemon_2, pokemon_3]

overrated_starter = [pokemon_4, pokemon_5, pokemon_6]

best_starter.each {|x| puts x[:name]}
puts ""
overrated_starter.each {|x| puts x[:name]}
puts ""