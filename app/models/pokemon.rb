require 'rest-client'
require 'json'
class Pokemon < ApplicationRecord

  # 898 Pokemons till date.

  def self.get_10_random
    random_pokemon_arr = (1..898).to_a
    pokemons_ids = []

    10.times { pokemons_ids << random_pokemon_arr.sample }
    pokemons_ids
  end

  def self.fetch_pokemons
    ids = get_10_random
    response = []
    ids.each do |id|
      url = "https://pokeapi.co/api/v2/pokemon-form/#{id}"
      pokemon = RestClient.get(url)
      response << JSON.parse(pokemon)
    end
    response
  end

  def self.fetch_pokemon(id)
    url = "https://pokeapi.co/api/v2/pokemon/#{id}"
    pokemon = RestClient.get(url)
    JSON.parse(pokemon)
  end

end
