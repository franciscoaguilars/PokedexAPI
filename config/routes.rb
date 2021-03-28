Rails.application.routes.draw do

  root 'api/v1/pokemons#index'

  namespace :api do
    namespace :v1 do
      resources :pokemons, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
