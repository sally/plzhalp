Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'dashboard_path', :sign_out => 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'

  get '/dashboard', to: 'index#dashboard'
  resources :appointments
  resources :users, only: [:show]

  resources :appointments do
    resources :student_feedbacks, only: [:new, :create, :show]
  end
end
