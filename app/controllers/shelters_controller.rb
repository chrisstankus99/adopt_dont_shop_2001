class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def show
    binding.pry
    @shelter = Shelter.find(params[:id])
  end
end
