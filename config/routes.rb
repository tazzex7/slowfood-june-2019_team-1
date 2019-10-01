Rails.application.routes.draw do

  get 'menu/index'
resources :products
root controller: :menu, action: :index

end
