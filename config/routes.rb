Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :opportunities, :services, :users
  root "users#index"
  post '/session' => 'sessions#create'
  post '/users' => 'users#create'
  get 'dashboard' => 'opportunities#index'
end
