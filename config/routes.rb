Rails.application.routes.draw do
  root to: 'artists#index'
  get 'artists/:id' => 'songs#index', as: :artist
  get 'songs/new' => 'songs#new', as: :new_song
  resources :songs, only: [:new, :edit, :create, :show, :update]

  delete "songs/:id" => "songs#destroy"

  resources :artists, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
