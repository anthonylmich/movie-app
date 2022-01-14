Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/actor/:wildcard" => "actors#actor"
  # Defines the root path route ("/")
  # root "articles#index"
  get "/movie_id/:wildcard" => "movies#movie_id"
  get "/movie_index" => "movies#index"
end
