class DirectorController < ApplicationController
  def directors
    render ({:template => "director_templates/directors"})
  end

  def director_details
    params[:id] = params[:id]
    @director = Director.find(params[:id])
    @films = Movie.where(director_id: @director.id)
    render ({:template => "director_templates/d_details"})
  end

  def director_youngest 
    @director = Director.where.not({:dob => nil}).order({:dob => :desc}).at(0)
    render ({:template => "director_templates/d_youngest"})
  end
  
  def director_eldest 
    @director = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render ({:template => "director_templates/d_eldest"})
  end
end
