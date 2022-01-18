Rails.application.routes.draw do

  # Actors:

  get "/actors" => "actors#index"
  get "/actor/:id" => "actors#show"
  get "/actor" => "actors#show"
  post "/actor" => "actors#create"
  patch "/actor/:id" => "actors#update"
  delete "/actor/:id" => "actors#destroy"
  
  # Movies: 

  get "/movies" => "movies#index"
  get "/movie/:id" => "movies#show"
  get "/movie" => "movies#show"
  post "/movie" => "movies#create"
  patch "/movie/:id" => "movies#update"
  delete "/movie/:id" => "movies#destroy"

end
