class Api::V1::VenuesController < ApplicationController
  protect_from_forgery unless: -> {request.format.json?}

  def index
    render json: Venue.all
  end

  def show
    render json: Venue.find(params[:id])
    @venue = Venue.find(params[:id])
    @reviews = @venue.reviews 
  end

  def create
  end

end
