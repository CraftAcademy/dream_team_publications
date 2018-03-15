Rails.application.routes.draw do
  devise_for :users
  root controller: :index, action: :index
  resources :articles, only: [:new, :create, :show]
end
