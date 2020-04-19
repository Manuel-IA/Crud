Rails.application.routes.draw do
  get 'pages/home'
  devise_for :login_users

  resources :home
  resources :clients
  #get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
