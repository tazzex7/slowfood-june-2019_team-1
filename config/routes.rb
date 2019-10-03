Rails.application.routes.draw do
  # resources :category
  devise_for :users
  
  root controller: :products, action: :index
end
