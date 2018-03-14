Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :show]
end
