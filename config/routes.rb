Rails.application.routes.draw do
  devise_for :login_users, path: '', path_names: { sign_in: '', sign_up: 'login_users/sign_up', sign_out: 'logout'}
  
  resources :clients
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
