Rails.application.routes.draw do
  devise_for :users
  root controller: :index, action: :index
end
