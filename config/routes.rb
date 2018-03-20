Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :articles, shallow: true do
    resources :comments, only: [:new, :create, :show]
  end
  resources :categories, only: [:show]
  devise_for :users
end
