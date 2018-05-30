Rails.application.routes.draw do
  get 'profil', to: 'profil#profil'
  resources :items
  resources :item_adds
  root 'index#index'
  get 'upload', to: 'index#upload', as: 'upload'
  get 'cart', to: 'index#cart', as: 'cart'
  post '/panier/remove/:id', to: "index#rm_from_cart", as: :remove
  get '/panier/remove/:id', to: "index#rm_from_cart", as: :removed
  post '/panier/:id', to: "index#add_to_cart", as: :adding
  devise_for :users

  resources :carts, only: [:new]
  get 'show', to: 'carts#show', as: 'pay'
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
