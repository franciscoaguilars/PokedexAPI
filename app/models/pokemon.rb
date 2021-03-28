require 'rest-client'
require 'json'
class Pokemon < ApplicationRecord

  # 898 Pokemons till date.

  def self.get_10_random
    (1..898).to_a.sample(10)
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
    if pokemon.nil?
      return nil
    else
      JSON.parse(pokemon)
    end
  end

end
