Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]

  patch 'artists/:id', to: 'artists#update' 
  patch 'genres/:id', to: 'genres#update' 
  patch 'songs/:id', to: 'songs#update' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
