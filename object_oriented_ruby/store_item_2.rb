class Pokemon
  attr_reader :name, :species, :types
  attr_accessor :level

  def initialize(input_hash)
    @name = input_hash[:name]
    @species = input_hash[:species]
    @type1 = input_hash[:type1]
    @type2 = input_hash[:type2]
    @level = input_hash[:level]
  end

  def display_id
    puts "This is level #{@level} #{@species}. It is a #{@type1.capitalize}#{'/' + @type2.capitalize if @type2 != nil} pokemon. It goes by #{@name}"
  end
end

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

class GenTwoPokemon < Pokemon
  def initialize(input_hash, gender)
    super(input_hash)
    @gender = gender
  end
end


togepi = GenTwoPokemon.new({name: "Toga Party",
  species: "Togepi",
  type1: "normal",
  level: 5},
  "male")
togepi.display_id