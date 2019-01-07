class Api::V1::LocationResultsController < ApplicationController
  def index
    location = GoogleGeoRequest.new(params[:location]).info
    weather = DarkSkyRequest.new(location[:coordinates]).weather
    #events = GoogleEventsRequest.new(params[:location]).events
    events = "NA"
    results = {
      "location": location,
      "weather": weather,
      "events": events
    }
    render json: results
  end
end