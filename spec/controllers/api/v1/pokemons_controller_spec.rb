require 'rails_helper'

RSpec.describe 'Pokemons API', type: :request do
  describe 'GET /index' do
    before { get '/api/v1/pokemons'}

    it 'Should return pokemons' do
      result = JSON.parse(response.body)
      expect(result).not_to be_empty
    end

    it 'Should have a length of 10' do
      result = JSON.parse(response.body)
      expect(result.size).to eq(10)
    end

    it 'Should return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /show' do
    before { get '/api/v1/pokemons/1'}

    it 'Should return status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'Should return one pokemon.' do
      result = [JSON.parse(response.body)]
      expect(result.size).to eq(1)
      expect(result).not_to be_empty
    end

    it 'Should return Bulbasaur' do
      result = JSON.parse(response.body)
      expect(result["forms"].first["name"]).to eq("bulbasaur")
    end
  end

  describe 'No Pokemon Found' do
    before { get '/api/v1/pokemons/123123123'}
    it 'Should return status code 404' do
      expect(response).to have_http_status(404)
    end
  end
end