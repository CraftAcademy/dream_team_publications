Rails.application.routes.draw do
  devise_for :users
  root controller: :index, action: :index
  resources :articles, shallow: true do
    resources :comments, only: [:new, :create, :show]
  end
end
