class ActorsController < ApplicationController

  def actor
    id = params[:wildcard]
    actor = Actor.find_by(id: id)
    render json: actor.as_json
  end
end
