Rails.application.routes.draw do
  root controller: :index, action: :index
<<<<<<< HEAD
  resources :articles, only: [:new, :create, :show]
  devise_for :users
  root controller: :index, action: :index
=======
  resources :articles, only: [:new, :create, :show, :destroy]
>>>>>>> c1067f123c3f8a5dbd4d3a3d6070f8be342ee24b
end
