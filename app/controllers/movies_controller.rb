class MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]
  # before_action :authenticate_user, only: [:index, :show]

  def index
    movie = Movie.all
    render json: movie
  end

  def show
    id = params["id"]
    id = id.to_i
    movie = Movie.find(id)
    render json: movie
  end

  def create
    movie = Movie.new(
      title: params[:title], 
      year: params[:year], 
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie
      else
      render json: {erros: movie.errors.full_messages}, status: :unprocessable_entity 
      end
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    if movie.save
      render json: movie
      else
      render json: {erros: movie.errors.full_messages}, status: :unprocessable_entity 
      end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The movie had been succesfully destroyed"}
  end
end
