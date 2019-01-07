class Api::V1::LocationResultsController < ApplicationController
  def index
    location = GoogleGeoRequest.new(params[:location]).info
    weather = DarkSkyRequest.new(location[:coordinates]).weather
    results = {
      "location": location,
      "weather": weather
    }
    render json: results
  end
end