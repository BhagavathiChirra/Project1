Rails.application.routes.draw do

  root to: "pages#home"

  get "/login" => "session#new" # ahow the login form
  post "/login" => "session#create" # submit the login and authenticate
  delete "/login" => "session#destroy"

  get 'pages/home'
  resources :users
  resources :products
  resources :categories
end
