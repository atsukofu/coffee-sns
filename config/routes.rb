Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, except: :index do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
end
