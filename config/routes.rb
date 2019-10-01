Rails.application.routes.draw do

root controller: :menu, action: :index
resources :products

end
