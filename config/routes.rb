Rails.application.routes.draw do
  scope '(:locale)', locale: /en|sv/ do
    root controller: :index, action: :index
    resources :articles, shallow: true do
      # resources :comments, only: %i[new create show]
      resources :comments, only: [:new, :create, :show]
    end
    resources :categories, only: [:show]
    devise_for :users
    resources :subscriptions, only: [:new, :create]
  end
end


# Rails.application.routes.draw do
# scope '(:locale)', locale: /en|sv/ do
#   root controller: :index, action: :index
#   end
#   resources :articles, shallow: true do
#     resources :comments, only: [:new, :create, :show]
#   end
#   resources :categories, only: [:show]
#   devise_for :users
#   resources :subscriptions, only: [:new, :create]
# end
