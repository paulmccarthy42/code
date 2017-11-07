class Pokemon
  attr_reader :name, :species, :type
  attr_accessor :level

  def initialize(name, species, types, level)
    @name = name
    @species = species
    @types = types
    @level = level
  end

  def state_id
    puts "This is level #{@level} #{@species}. It goes by #{@name}"
  end
end

bulbasaur = Pokemon.new("Bulby", "Bulbasaur", [:grass, :poison], 5)

bulbasaur.state_id
puts bulbasaur.name
bulbasaur.level += 1
bulbasaur.state_id

puts "test"
