Rails.application.routes.draw do

  root to: "pages#home"

  get "/login" => "session#new" # ahow the login form
  post "/login" => "session#create" # submit the login and authenticate
  delete "/login" => "session#destroy"

  post "/products/:id/add_to_cart" => "products#add", as: :add_to_cart

  get "/pages" => "pages#cart", as:"show_cart"

  delete "/cart/:id/remove" => "products#remove", as: :remove_from_cart


  get 'pages/home'
  resources :users , :products, :categories
  # resources :products
  # resources :categories
end
