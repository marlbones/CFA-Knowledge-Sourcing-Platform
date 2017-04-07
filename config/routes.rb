Rails.application.routes.draw do

  resources :topics do
    member do
      resources :posts
    end
  end
  root 'pages#home'

  get 'pages/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
