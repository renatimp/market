Rails.application.routes.draw do
  root 'sessions#new'

  resources :users, only: [:new, :create, :edit, :update, :destroy]
  resources :products, only: [:new, :create]
  get 'index', to: 'home#index'
  get 'entrar', to: 'sessions#new'
  get 'profile', to: 'home#show'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
