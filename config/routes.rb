Rails.application.routes.draw do

  # Actors:

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  get "/actor" => "actors#show"
  post "/actors" => "actors#create"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"
  
  # Movies: 

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/movie" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
