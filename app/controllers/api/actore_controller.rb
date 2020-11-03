class Api::ActoreController < ApplicationController
  def index
    @actors = Actor.all
    render "all.json.jb"
  end

  def show
    id = params["id"]
    @actor = Actor.find(id)
    render "actor.json.jb"
  end

  def create
    @actor = Actor.new({
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
    })
    @actor.save
    render "actor.json.jb"
  end

  def update
    id = params["id"]
    @actor = Actor.find(id)

    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.save
    render "actor.json.jb"
  end

  def destroy
    id = params["id"]
    @actor = Actor.find(id)

    @actor.destroy
    render json: {
      message: "Actor deleted successfully",
    }
  end
end
