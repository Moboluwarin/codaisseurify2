Rails.application.routes.draw do
  root to: 'artists#index'
  get 'artists/:id' => 'songs#index', as: :artist
  get 'songs/new' => 'songs#new', as: :new_song
  get 'songs/:id' => 'songs#show', as: :song


  resources :artists, only: [:show]
  resources :songs, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
