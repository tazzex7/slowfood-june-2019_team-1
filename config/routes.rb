Rails.application.routes.draw do
  get 'products/show'
  devise_for :users

  get 'landing/index'
  
  resources :products

  root controller: :landing, action: :index
end
