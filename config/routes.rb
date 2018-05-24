Rails.application.routes.draw do

  get 'cart/show'
  root to: "session#new"

  get "/login" => "session#new" # ahow the login form
  post "/login" => "session#create" # submit the login and authenticate
  delete "/login" => "session#destroy"

  post "/products/:id/add_to_cart" => "cart#add", as: :add_to_cart

  get "/cart" => "cart#show", as:"show_cart"

  delete "/cart/:id/remove" => "cart#remove", as: :remove_from_cart

  get "/cart/:id/check_out" => "cart#check_out", as: :check_out

  get 'pages/home'
  get '/search' => "products#search", as: :product_search
  resources :users , :products, :categories
  # resources :products
  # resources :categories
end
