Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'

  # resources :user
  resources :users, only: [:show]
end
