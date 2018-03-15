Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :articles, shallow: true
end
