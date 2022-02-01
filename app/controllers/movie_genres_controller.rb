class MovieGenresController < ApplicationController
  def create
    moviegenres = MovieGenres.new(
      movie_id: params[:movie_id], 
      genre_id: params[:genre_id], 
    )
    if moviegenres.save
      render json: moviegenres.as_json
    else
      render json: {erros: moviegenres.errors.full_messages}, status: :unprocessable_entity 
    end
  end
end
