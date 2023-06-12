class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    puts "###"* 100
    puts "HIT"
    puts "###"* 100
  end
end
