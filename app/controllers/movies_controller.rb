class MoviesController < ApplicationController
  def movie_id
    id = params[:wildcard]
    id = id.to_i
    movie = Movie.find(id)
    render json: movie.as_json
  end
  def index
    movie = Movie.all
    render json: movie.as_json
  end
end
