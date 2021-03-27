class Api::V1::PokemonsController < ApplicationController
 
  # /api/v1/pokemons
  def index
    render json: Pokemon.fetch_pokemons
  end

  def show
    render json: Pokemon.fetch_pokemon(params[:id])
    rescue RestClient::NotFound
      render json: { error: "Pokemon not found! "}, status: :not_found
  end
end
