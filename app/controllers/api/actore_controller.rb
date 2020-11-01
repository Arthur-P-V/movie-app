class Api::ActoreController < ApplicationController
  def benedict
    @actor = Actor.find(2)
    render "benedict.json.jb"
  end

  def actor
    input = params["actor"]
    @output = Actor.find_by(first_name: input)
    render "actor.json.jb"
  end
end
