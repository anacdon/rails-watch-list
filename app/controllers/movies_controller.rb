class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :post_url, :rating)
  end
end
