Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :index, only: [:create, :index]
  namespace :api do
  namespace :v0 do
  resources :articles, only: [:index], constraints: { format: 'json' }
  end
end
  resources :articles, shallow: true do
    resources :comments, only: [:new, :create, :show]
  end
  resources :categories, only: [:show]
  devise_for :users
  resources :subscriptions, only: [:new, :create]
end
