require "./pokemon.rb"
require "./gen_two_pokemon.rb"
require "./egg.rb"

bulbasaur = Pokemon.new({name: "Bulby",
  species: "Bulbasaur",
  type1: "grass",
  type2: "poison",
  level: 5})
charmander = Pokemon.new({name: "Charmy",
  species: "Charmander",
  type1: "fire",
  level: 5})

bulbasaur.display_id
puts bulbasaur.name
bulbasaur.level += 1
charmander.display_id

togepi = GenTwoPokemon.new({name: "Toga Party",
  species: "Togepi",
  type1: "normal",
  level: 5},
  "male")
togepi.display_id

egg = Egg.new({name: "Toga Party",
  species: "Togepi",
  type1: "normal",
  level: 5})

p egg
egg.display_id