Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :index, only: %i[create index]
  namespace :api do
    namespace :v1 do
      get '/api/v1/articles'
      resources :articles, only: [:index, :show], constraints: { format: 'json' }
    end
  end
  resources :articles, shallow: true do
    resources :comments, only: %i[new create show]
  end
  resources :categories, only: [:show]
  devise_for :users
  resources :subscriptions, only: %i[new create]
end
