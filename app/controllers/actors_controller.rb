class ActorsController < ApplicationController

  def index
    @actors = CrewMember.actors.where("crew_members.name LIKE ?", "%#{search_params[:name]}%")
  end

  private

  def search_params
    params.permit(:name)
  end
end
