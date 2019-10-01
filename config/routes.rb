Rails.application.routes.draw do
  get 'products/show'
  devise_for :users

  resources :products

  root controller: :landing, action: :index
end
