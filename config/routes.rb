Rails.application.routes.draw do


  root 'index#index'
  get 'cart', to: 'index#cart', as: 'cart'
  post '/panier/:id', to: "index#add_to_cart", as: :adding
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
