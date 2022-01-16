class ActorsController < ApplicationController

  def actor
    id = params[:wildcard]
    actor = Actor.find_by(id: id)
    render json: actor.as_json
  end
  def show
    id = params["id"]
    id = id.to_i
    actor = Actor.find(id)
    render json: actor.as_json
  end
  def show_2
    id = params[:wildcard]
    id = id.to_i
    actor = Actor.find(id)
    render json: actor.as_json
  end
end
