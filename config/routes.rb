Rails.application.routes.draw do
  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
  end
  resources :topics do
    member do
      put "like" => "topics#upvote"
      put "unlike" => "topics#downvote"
    end
  end
  root 'pages#home'

  get 'pages/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
