require "./playable.rb"
require "./poke_entity.rb"

module PokemonStore
  class Pokemon < PokeEntity
    include Playable
  end
end