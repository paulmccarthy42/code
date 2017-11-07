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
    puts "This is level #{@level} #{@species}. It is a #{@type1}#{'/' if @type2 != nil}#{@type2} pokemon. It goes by #{@name}"
  end
end

bulbasaur = Pokemon.new({name: "Bulby", species: "Bulbasaur", type1: :grass, type2: :poison, level: 5})
charmander = Pokemon.new({name: "Charmy", species: "Charmander", type1: :fire, level: 5})

bulbasaur.display_id
puts bulbasaur.name
bulbasaur.level += 1
charmander.display_id

puts "test"
