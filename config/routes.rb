Rails.application.routes.draw do

  # Actors:

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  get "/actor" => "actors#show"
  post "/actors" => "actors#create"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"
  
  # Movies: 

  defaults format: :json do
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
  end

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/genres" => "moviegenres#create"
end
