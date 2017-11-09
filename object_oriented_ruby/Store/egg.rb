require "./poke_entity.rb"

module PokemonStore
  class Egg < PokeEntity
    def display_id
      puts "It's an egg."
    end
  end
end