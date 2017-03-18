Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  resources :artists  do
     resources :songs
  end
  resources :photos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
