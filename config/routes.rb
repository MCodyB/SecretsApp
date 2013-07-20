SecretsApp::Application.routes.draw do
  root :to => "users#new"
  resources :users do
    resources :secrets, only: [:new, :create]
    resources :friendships, only: [:create, :destroy]
  end
  resources :friendships, only: [:destroy]
  resources :secrets
  resource :session, only: [:new, :create, :destroy]
  
  match "/login", to: "sessions#new"
  match "/logout", to: "sessions#destroy"
end
