class SightingsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @sighting = @list.sightings.new
  end

  def create
    @list = List.find(params[:list_id])
    @sighting = @list.sightings.new(sighting_params)
    if @sighting.save
      redirect_to list_path(@sighting.list)
    else
      render :new
    end
  end

  private
    def sighting_params
      params.require(:sighting).permit(:date_seen)
    end
end
