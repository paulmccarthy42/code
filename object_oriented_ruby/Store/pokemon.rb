require "./playable.rb"
require "./poke_entity.rb"

class Pokemon < PokeEntity
  include Playable
end
