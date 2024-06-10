class DirectorController < ApplicationController
  def directors
    render ({:template => "director_templates/directors"})
  end

  def director_details
    @director = Director.find(params[:id])
    @films = Movie.where(director_id: @director_id)
    render ({:template => "director_templates/d_details"})
  end
end
