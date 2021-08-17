class SightingsController < ApplicationController
  def show
    sighting = Sighting.find_by(id: params[:id])
    options = {
      include: [:bird, :location]
    }
    log = render json: SightingSerializer.new(sighting)
    console.log(log)
  end
end
