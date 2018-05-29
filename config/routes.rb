Rails.application.routes.draw do


  get 'carts/show'
  root 'index#index'
  get 'cart', to: 'index#cart', as: 'cart'
  post '/panier/remove/:id', to: "index#rm_from_cart", as: :remove
  get '/panier/remove/:id', to: "index#rm_from_cart", as: :removed
  post '/panier/:id', to: "index#add_to_cart", as: :adding
  devise_for :users
 resource :cart, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
