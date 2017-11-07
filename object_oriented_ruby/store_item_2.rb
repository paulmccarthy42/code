class Pokemon
  attr_reader :name, :species, :types
  attr_accessor :level

  def initialize(name, species, types, level)
    @name = name
    @species = species
    @types = types
    @level = level
  end

  def display_id
    puts "This is level #{@level} #{@species}. It goes by #{@name}"
  end
end

bulbasaur = Pokemon.new("Bulby", "Bulbasaur", [:grass, :poison], 5)

bulbasaur.display_id
puts bulbasaur.name
bulbasaur.level += 1
bulbasaur.display_id

puts "test"
