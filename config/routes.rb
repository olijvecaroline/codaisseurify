Rails.application.routes.draw do
  get 'artists/index'
  root to: 'arstists#index'

  resources :artists
  resources :songs
  resources :photos
  post "/artists/:id" => "artists#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
