require "./pokemon.rb"

module PokemonStore
  class GenTwoPokemon < Pokemon

    def initialize(input_hash, gender)
      super(input_hash)
      @gender = gender
    end
  end
end