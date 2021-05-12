Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'work', to: "pages#work", as: :work
  get 'about', to: "pages#about", as: :about
  get "articles/:id", to: "articles#show", as: :article

  get "exhibitions/:id", to: "exhibitions#show", as: :exhibition
end
