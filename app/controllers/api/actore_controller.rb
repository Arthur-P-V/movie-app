class Api::ActoreController < ApplicationController
  def benedict
    @actor = Actor.find(2)
    render "benedict.json.jb"
  end
end
