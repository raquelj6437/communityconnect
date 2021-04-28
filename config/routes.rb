Rails.application.routes.draw do
  post 'opportunity_token' => 'opportunity_token#create'
  # root 'pages#index'
  get 'hello_world', to: 'hello_world#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :opportunities, :services, :users
  root "users#index"
  post '/session' => 'sessions#create'
  post '/users' => 'users#create'
  get 'dashboard' => 'opportunities#index'
  get 'employerverify' => 'employer_verify#index'
  get 'opportunity/:id' => 'opportunities#show'
  delete '/session' => 'sessions#destroy'
end
