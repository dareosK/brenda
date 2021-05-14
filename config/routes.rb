Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'work', to: "pages#work", as: :work
  get 'about', to: "pages#about", as: :about

  resources :articles, except: [:index]
  # get "articles/new", to: "articles#new" # The `new` route needs to be *before* `show` route.
  # post "articles", to: "articles#create"
  # get "articles/:id/edit", to: "articles#edit"
  # delete "articles/:id", to: "articles#destroy"
  # get "articles/:id", to: "articles#show", as: :article

  resources :exhibitions, except: [:index]
  # get "exhibitions/new", to: "exhibitions#new"
  # post "exhibitions", to: "exhibitions#create"
  # get "exhibitions/:id/edit", to: "exhibitions#edit"
  # delete "exhibitions/:id", to: "exhibitions#destroy"
  # get "exhibitions/:id", to: "exhibitions#show", as: :exhibition
end
