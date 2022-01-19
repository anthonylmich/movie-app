class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def show
    id = params["id"]
    id = id.to_i
    actor = Actor.find(id)
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      known_for: params[:known_for]
    )
    actor.save
    render json: actor.as_json
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.save
    render json: actor
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "The actor had been succesfully destroyed"}
  end
end
