class MoviesController < ApplicationController

  def index
    movie = Movie.all
    render json: movie.as_json
  end

  def show
    id = params["id"]
    id = id.to_i
    movie = Movie.find(id)
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title], 
      year: params[:year], 
      plot: params[:plot]
    )
    movie.save
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The movie had been succesfully destroyed"}
  end
end
