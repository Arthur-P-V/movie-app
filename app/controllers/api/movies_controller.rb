class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.where("english = ?", true)
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
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
    end
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
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
    end
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
