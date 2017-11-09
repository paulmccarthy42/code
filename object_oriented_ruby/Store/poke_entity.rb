module PokemonStore
  class PokeEntity
    def initialize(input_hash)
      @name = input_hash[:name]
      @species = input_hash[:species]
      @type1 = input_hash[:type1]
      @type2 = input_hash[:type2]
      @level = input_hash[:level]
    end
  end
end