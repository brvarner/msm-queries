class MovieController < ApplicationController
  def movies
    render ({:template => "movie_templates/movies"})
  end

  def movie_details
    @movie = Movie.find(params[:id])
    @matching_records = Director.where(id: @movie.director_id)
    @director = @matching_records[0].name
    render ({:template => "movie_templates/m_details"})
  end
end
