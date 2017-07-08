Rails.application.routes.draw do
  root to: 'songs#index'
  get "songs" => "songs#index"
  devise_for :artists

  resources :artists, only: [:show]
  resources :songs, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
