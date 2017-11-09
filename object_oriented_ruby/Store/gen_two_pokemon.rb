require "./pokemon.rb"

class GenTwoPokemon < Pokemon

  def initialize(input_hash, gender)
    super(input_hash)
    @gender = gender
  end
end