Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end

# Rails.application.routes.draw do
#   get "/lists", to: "lists#index"
#   get "/lists/new", to: "lists#new"
#   get "/lists/:id", to: "lists#show"
#   post "/lists/:id", to: "lists#create"

#   # get "/lists", to: "lists#edit"
#   get "/bookmarks", to: "bookmarks#new"
#   post "/bookmarks/:id", to: "bookmarks#create"
# end
