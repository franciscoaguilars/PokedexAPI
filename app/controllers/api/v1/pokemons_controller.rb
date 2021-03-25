class Api::V1::PokemonsController < ApplicationController
 
  # /api/v1/pokemons
  def index
    render json: Pokemon.fetch_pokemons
  end

  def show
  end
end
