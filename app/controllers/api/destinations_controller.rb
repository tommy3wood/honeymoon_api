class Api::DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    render 'index.json.jb' 
  end

  def show
    @destination = Destination.find(params[:id])
    render 'show.json.jb'
  end

  def method_name
    @destination = Destination.find(params[:id])

    @destination.name = params[:name] || @destination.name
    @destination.description = params[:description] || @destination.description
    @destination.activities = params[:activities] || @destination.activities
    @destination.accomodations = params[:accomodations] || @destination.accomodations
    @destination.distance_from_santorini = params[:distance_from_santorini] || @destination.distance_from_santorini
    @destination.rating = params[:rating] || @destination.rating
  
  @destination.save
  render 'show.json.jb'
  end 

end
