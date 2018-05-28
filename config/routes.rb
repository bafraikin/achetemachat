Rails.application.routes.draw do
<<<<<<< HEAD

  root 'page#index'

=======
  root to: 'index#index'
>>>>>>> c0948f2fbd6946ac8f1923dee5a95826c77222be
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
