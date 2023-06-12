class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    # puts "###"* 100
    # puts @pokemons
    # puts "###"* 100
  end
end
