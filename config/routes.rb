Rails.application.routes.draw do
  # root 'pages#index'
  get 'hello_world', to: 'hello_world#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :opportunities, :services, :users
  root "users#index"
  namespace :api, defaults: { format: 'json' } do
      resources :posts, only: [:index, :create]
    end
  post '/session' => 'sessions#create'
  post '/users' => 'users#create'
  get 'dashboard' => 'opportunities#index'
  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
    match '*path', to: 'users#index', via: :all
end
