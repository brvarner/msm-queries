class DirectorController < ApplicationController
  def directors
    render ({:template => "director_templates/directors"})
  end

  def director_details
    @director_id = params.fetch("id")
    render ({:template => "director_templates/d_details"})
  end
end
