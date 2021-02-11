Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create]
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
