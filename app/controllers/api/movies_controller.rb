class Api::MoviesController < ApplicationController
  def showall
    @movies = Movie.all
    render "all.json.jb"
  end

  def scott
    @scott = Movie.find(5)
    render "scott.json.jb"
  end
end
