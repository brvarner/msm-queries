class ActorController < ApplicationController
  def actors
    render ({:template => "actor_templates/actors"})
  end

  def actor_details
    @actor = Actor.find(params[:id])
    @characters = Character.where(actor_id: @actor.id)
    # We have to find the films by referencing the character table, seeing how many times the actor_id shows up, and referencing the movies table every time?
    render ({:template => "actor_templates/a_details"})
  end
end
