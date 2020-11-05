class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "all.json.jb"
  end

  def show
    id = params["id"]
    @movie = Movie.find(id)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new({
      title: params["title"],
      year: params["year"],
      director: params["director"],
      plot: params["plot"],
      english: params["english"],
    })
    @movie.save
    render "show.json.jb"
  end

  def update
    id = params["id"]
    @movie = Movie.find(id)

    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.director = params["director"] || @movie.director
    @movie.plot = params["plot"] || @movie.plot
    @movie.english = params["english"] || @movie.english
    @movie.save
    render "show.json.jb"
  end

  def destroy
    id = params["id"]
    @movie = Movie.find(id)

    @movie.destroy
    render json: {
      message: "movie deleted successfully",
    }
  end
end
