Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :articles, only: [:new, :create, :show, :destroy]
  resources :comments, only: [:new, :create, :show]
end
