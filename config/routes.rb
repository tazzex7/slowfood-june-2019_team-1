Rails.application.routes.draw do
  root controller: :product, action: :index
  resources :category
end
