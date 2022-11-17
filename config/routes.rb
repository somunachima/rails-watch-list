Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:new, :create, :show, :index] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

# resources :lists do
# end

# resources :movies do
#   resources :bookmarks
# end

# resources :bookmarks do
# end
