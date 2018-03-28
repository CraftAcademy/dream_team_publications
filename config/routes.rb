Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :index, only: %i[create index]
  namespace :api do
    namespace :v0 do
      resources :articles, only: [:index], constraints: { format: 'json' }
      resources :articles, only: [:show], constraints: { format: 'json' }
    end
  end
  resources :articles, shallow: true do
    resources :comments, only: %i[new create show]
  end
  resources :categories, only: [:show]
  devise_for :users
  resources :subscriptions, only: %i[new create]
end
