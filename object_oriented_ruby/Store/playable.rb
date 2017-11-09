module PokemonStore
  module Playable
    attr_reader :name, :species, :types
    attr_accessor :level

    def display_id
      puts "This is level #{@level} #{@species}. It is a #{@type1.capitalize}#{'/' + @type2.capitalize if @type2 != nil} pokemon. It goes by #{@name}"
    end
  end
end