Rails.application.routes.draw do
  # root 'pages#index'
  get 'hello_world', to: 'hello_world#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :opportunities, :services, :users
  root "users#index"
  post '/session' => 'sessions#create'
  post '/users' => 'users#create'
  get 'dashboard' => 'opportunities#index'
  delete '/session', to: 'sessions#destroy'
  delete '/opportunity', to: 'opportunities#destroy'
end
