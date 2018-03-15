Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :articles, only: [:new, :create, :show, :destroy]
  devise_for :users
  root controller: :index, action: :index
end
